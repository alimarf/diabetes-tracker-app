import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/ui/pages/meal_page.dart';

class MealRoutes {
  static const String mealPath = '/meal';
  static const String addMealPath = '/meal/add';
  static const String mealDetailsPath = '/meal/details';

  static List<RouteBase> get routes => [
        GoRoute(
          path: mealPath,
          builder: (BuildContext context, GoRouterState state) {
            return const MealPage();
          },
        ),
        // These routes can be implemented as needed when those pages are created
        // GoRoute(
        //   path: addMealPath,
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const AddMealPage();
        //   },
        // ),
        // GoRoute(
        //   path: '$mealDetailsPath/:id',
        //   builder: (BuildContext context, GoRouterState state) {
        //     final id = state.pathParameters['id'];
        //     return MealDetailsPage(mealId: id);
        //   },
        // ),
      ];
}
