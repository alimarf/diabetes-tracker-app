import 'package:flutter/material.dart';

import 'routes/app_router.dart';

/// Main application widget
class App extends StatelessWidget {
  /// Creates a new instance of [App]
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Diabetes App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // Use GoRouter for navigation
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}