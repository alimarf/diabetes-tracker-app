import 'package:diabetes_app/app/features/glucose/initializer.dart';

import 'features/auth/initializer.dart';
import 'features/meal/initializer.dart';

class AppInitializer {
  AppInitializer();

  Future<void> run() async {
    await AuthInitializer().run();
    await GlucoseInitializer().run();
    await MealInitializer().run();
  }
}
