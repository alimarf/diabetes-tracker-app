import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/ui/pages/splash_page.dart';
import '../features/auth/routes/auth_routes.dart';
import '../features/glucose/routes/glucose_routes.dart';
import '../features/home/routes/home_routes.dart';
import '../features/meal/routes/meal_routes.dart';
import '../features/medication/routes/medication_routes.dart';
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
      ...HomeRoutes.routes,
      ...AuthRoutes.routes,
      ...GlucoseRoutes.routes,
      ...MealRoutes.routes,
      ...MedicationRoutes.routes,
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
