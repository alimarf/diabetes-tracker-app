import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';
import 'core/config/app_config.dart';
import 'core/networking/api_client.dart';
import 'core/networking/interceptor/api_interceptor.dart';
import 'core/services/auth_token_manager.dart';
import 'core/values/flavor/flavor.dart';

final GetIt serviceLocator = GetIt.instance;

class DependencyInjection {
  final AppConfig appConfig;

  DependencyInjection(this.appConfig);

  Future<void> init() async {
    try {
      if (serviceLocator.isRegistered<AuthTokenManager>()) {
        await serviceLocator.reset();
      }

      if (!serviceLocator.isRegistered<AuthTokenManager>()) {
        serviceLocator.registerSingleton<AuthTokenManager>(AuthTokenManager());
      }

      final interceptors = _getInterceptors();

      if (!serviceLocator.isRegistered<ApiClient>()) {
        final apiUrl = appConfig.apiBaseUrl;
        serviceLocator.registerSingleton<ApiClient>(
          ApiClient(
            baseUrl: apiUrl,
            interceptors: interceptors,
          ),
        );
      }

      debugPrint('Root DI initialized successfully');
    } catch (e) {
      log('Error initializing dependencies: ${e.toString()}');
      rethrow;
    }
  }

  List<Interceptor> _getInterceptors() {
    final isDebugEnvironment = (kDebugMode ||
        appConfig.flavor == AppFlavor.dev ||
        appConfig.flavor == AppFlavor.staging);

    final isWeb = false;

    if (isDebugEnvironment && !isWeb) {
      return [
        ApiInterceptor(
          tokenManager: serviceLocator<AuthTokenManager>(),
          appConfig: appConfig,
        ),
      ];
    } else {
      return [
        ApiInterceptor(
          tokenManager: serviceLocator<AuthTokenManager>(),
          appConfig: appConfig,
        ),
      ];
    }
  }
}
