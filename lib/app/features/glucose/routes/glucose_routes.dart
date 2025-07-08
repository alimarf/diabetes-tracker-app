import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/ui/pages/add_glucose_page.dart';
import '../presentation/ui/pages/glucose_page.dart';

class GlucoseRoutes {
  static const String glucosePath = '/glucose';
  static const String addGlucosePath = '/glucose/add';
  static const String editGlucosePath = '/glucose/edit';

  static List<RouteBase> get routes => [
        GoRoute(
          path: glucosePath,
          builder: (BuildContext context, GoRouterState state) {
            return const GlucosePage();
          },
        ),
        GoRoute(
          path: addGlucosePath,
          builder: (BuildContext context, GoRouterState state) {
            return const AddGlucosePage();
          },
        ),
        GoRoute(
          path: '$editGlucosePath/:id',
          builder: (BuildContext context, GoRouterState state) {
            final id = state.pathParameters['id'];
            // In a real implementation, you would fetch the glucose reading by ID
            // and pass it to the AddGlucosePage
            return const AddGlucosePage(); 
          },
        ),
      ];
}
