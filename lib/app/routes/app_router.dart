import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/ui/pages/splash_page.dart';
import '../features/auth/routes/auth_routes.dart';
import 'routes.dart';

class AppRouter {
  AppRouter();

  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.splash,
        name: Routes.splash.substring(1),
        builder: (context, state) => const SplashPage(),
      ),
      ...AuthRoutes.routes,
    ],
    redirect: (context, state) async {
      return null;
    },
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Error: ${state.error}',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    ),
  );
}
