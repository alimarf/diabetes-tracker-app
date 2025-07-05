import 'package:diabetes_app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'app/di.dart'; // App-level dependencies
import 'di.dart'; // Root-level dependencies
import 'core/config/app_config.dart';
import 'core/values/flavor/flavor.dart';
import 'initializer.dart'; // Root initializer
import 'app/features/auth/initializer.dart'; // Auth initializer

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    // Reset GetIt completely to ensure clean state
    await GetIt.I.reset();
    final locator = GetIt.instance;
    
    // Safely load environment variables
    try {
      await dotenv.load(fileName: "./environments/.env.prod");
    } catch (e) {
      debugPrint('Warning: Failed to load .env file: $e');
      // Continue without env file
    }

    // Register app configuration
    final appConfig = AppConfig(
      flavor: AppFlavor.prod,
      appName: dotenv.get('APP_NAME'),
      apiBaseUrl: dotenv.get('API_BASE_URL'),
      storageUrl: dotenv.get('STORAGE_URL'),
      storageKey: dotenv.get('STORAGE_KEY'),
    );
    locator.registerSingleton<AppConfig>(appConfig);

    // Set preferred orientations
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
    // Initialize Hive storage first
    await Initializer(appConfig).run(); // Root initializer that opens 'auth' box
    await AuthInitializer().run();      // Auth initializer that opens 'auth-user' box

    // Initialize dependencies in a specific order
    // Core dependencies first (but not app dependencies yet)
    await DependencyInjection(appConfig).init();
    
    // Then app-level dependencies
    await AppDependencyInjection().init();

    // Run the app
    runApp(const App());
  } catch (e) {
    debugPrint('Error during app initialization: $e');
    // Consider showing an error screen here
  }
}
