import 'dart:developer';

import 'package:dio/dio.dart' as Dio;
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../config/app_config.dart';
import '../../exceptions/cache_exception.dart';
import '../../services/auth_token_manager.dart';

class ApiInterceptor extends Dio.Interceptor {
  final AppConfig appConfig;
  final AuthTokenManager tokenManager;

  ApiInterceptor({required this.appConfig, required this.tokenManager});

  // Get the service locator instance
  final _serviceLocator = GetIt.instance;

  Future<void> signOut() async {
    // Clear all caches
    await _serviceLocator<AuthTokenManager>().clear();

    // If you have these managers, uncomment and register them in DI
    // await _serviceLocator<FeedbackStorageManager>().clear();
    // await _serviceLocator<ReportStorageManager>().clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Navigate to information page using GoRouter
      // You'll need to adjust this to match your actual routes
      final context =
          _serviceLocator<GlobalKey<NavigatorState>>().currentContext;
      if (context != null) {
        // Get current route
        final currentLocation = GoRouterState.of(context).uri.toString();
        if (currentLocation == '/information') {
          return;
        }

        //TODO: add information page

        // Navigate to information page with parameters
        context.go('/information', extra: {
          'title': 'Login isn\'t valid',
          'description': 'Please re-login to update the session',
          'navigation_label': 'Login',
          'destination': '/login'
        });
      }
    });
  }

  @override
  Future<void> onRequest(
      Dio.RequestOptions options, Dio.RequestInterceptorHandler handler) async {
    try {
      // Use GetIt to find the GetUser use case
      // If you have this use case, uncomment and register it in DI
      // final getUser = _serviceLocator<GetUser>();

      if (!options.path.contains('/Logon')) {
        // Uncomment if you have the GetUser use case
        /*
        final result = await getUser.execute();

        result.fold(
          (l) {
            if (l.data?.masterKey != null) {
              options.queryParameters['MasterKey'] = l.data?.masterKey;
            }
          },
          (r) {
            if (r.data?.masterKey != null) {
              options.queryParameters['MasterKey'] = r.data?.masterKey;
            }
          },
        );
        */
      }
    } on CacheException catch (e) {
      log("CacheException occurred: $e");
    } catch (e) {
      log("An error occurred: $e");
    } finally {
      final token = tokenManager.getAccessToken();
      if (token != null && !options.uri.toString().contains('login')) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      final requestId = const Uuid().v4();
      options.headers['X-Request-ID'] = requestId;

      super.onRequest(options, handler);
    }
  }

  @override
  void onResponse(
      Dio.Response response, Dio.ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
      signOut();
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(Dio.DioException error, Dio.ErrorInterceptorHandler handler) {
    if (error.response?.statusCode == 401 &&
        error.response?.realUri.toString().contains('/login') == false) {
      signOut();
    }
    return super.onError(error, handler);
  }
}
