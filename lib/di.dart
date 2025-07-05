import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';

import 'app/di.dart';
import 'core/config/app_config.dart';
import 'core/networking/api_client.dart';
import 'core/networking/interceptor/api_interceptor.dart';
import 'core/services/auth_token_manager.dart';
import 'core/values/flavor/flavor.dart';

/// Global service locator instance for the application.
/// This should be the single source of truth for dependency injection.
final GetIt serviceLocator = GetIt.instance;

/// Main dependency injection class for the application
class DependencyInjection {
  /// The application configuration
  final AppConfig appConfig;

  /// Creates a new instance of [DependencyInjection]
  DependencyInjection(this.appConfig);

  /// Initializes all application dependencies
  Future<void> init() async {
    try {
      // Reset the service locator if it's already initialized
      if (serviceLocator.isRegistered<AuthTokenManager>()) {
        await serviceLocator.reset();
      }

      // Register AuthTokenManager as a singleton only if not already registered
      if (!serviceLocator.isRegistered<AuthTokenManager>()) {
        serviceLocator.registerSingleton<AuthTokenManager>(AuthTokenManager());
      }

      // Determine which interceptors to use based on environment
      final interceptors = _getInterceptors();

      // Register ApiClient as a singleton only if not already registered
      if (!serviceLocator.isRegistered<ApiClient>()) {
        final apiUrl = appConfig.apiBaseUrl;
        serviceLocator.registerSingleton<ApiClient>(
          ApiClient(
            baseUrl: apiUrl,
            interceptors: interceptors,
          ),
        );
      }

      // Initialize feature-specific dependencies
      await AppDependencyInjection().init();
    } catch (e) {
      log('Error initializing dependencies: ${e.toString()}');
      rethrow; // Re-throw to allow callers to handle the error
    }
  }

  /// Get the appropriate interceptors based on environment
  List<Interceptor> _getInterceptors() {
    final isDebugEnvironment = (kDebugMode ||
        appConfig.flavor == AppFlavor.dev ||
        appConfig.flavor == AppFlavor.staging);

    // Check if we're in a web platform
    final isWeb = false; // Replace with proper web platform check

    if (isDebugEnvironment && !isWeb) {
      return [
        ApiInterceptor(
          tokenManager: serviceLocator<AuthTokenManager>(),
          appConfig: appConfig,
        ),
        // Alice interceptor - initialize if needed
        // If you need Alice, initialize it before using:
        // final alice = Alice();
        // serviceLocator.registerSingleton<Alice>(alice);
        // Uncomment if needed:
        // PrettyDioLogger(
        //   requestHeader: true,
        //   requestBody: true,
        //   responseBody: true,
        //   responseHeader: false,
        //   error: true,
        //   compact: true,
        //   maxWidth: 90
        // ),
      ];
    } else {
      return [
        ApiInterceptor(
          tokenManager: serviceLocator<AuthTokenManager>(),
          appConfig: appConfig,
        ),
        // Uncomment if needed:
        // CurlLoggerDioInterceptor(printOnSuccess: true),
      ];
    }
  }
}
