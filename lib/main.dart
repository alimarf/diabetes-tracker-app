import 'package:diabetes_app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'app/di.dart';
import 'di.dart';
import 'core/config/app_config.dart';
import 'core/values/flavor/flavor.dart';
import 'initializer.dart';
import 'app/features/auth/initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await GetIt.I.reset();
    final locator = GetIt.instance;

    try {
      await dotenv.load(fileName: "./environments/.env.prod");
    } catch (e) {
      debugPrint('Warning: Failed to load .env file: $e');
    }

    final appConfig = AppConfig(
      flavor: AppFlavor.prod,
      appName: dotenv.get('APP_NAME'),
      apiBaseUrl: dotenv.get('API_BASE_URL'),
      storageUrl: dotenv.get('STORAGE_URL'),
      storageKey: dotenv.get('STORAGE_KEY'),
    );
    locator.registerSingleton<AppConfig>(appConfig);

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await Initializer(appConfig).run();
    await AuthInitializer().run();

    await DependencyInjection(appConfig).init();
    await AppDependencyInjection().init();
    runApp(const App());
  } catch (e) {
    debugPrint('Error during app initialization: $e');
  }
}
