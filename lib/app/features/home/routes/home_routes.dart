import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/ui/pages/home_page.dart';

class HomeRoutes {
  static const String homePath = '/home';

  static List<RouteBase> routes = [
    GoRoute(
      path: homePath,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
  ];
}
