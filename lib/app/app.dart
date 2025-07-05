import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'routes/app_router.dart';

/// Main application widget
class App extends StatelessWidget {
  /// Creates a new instance of [App]
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: _buildApp(),
    );
  }

  Widget _buildApp() {
    return MaterialApp.router(
      title: 'Diabetes App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}