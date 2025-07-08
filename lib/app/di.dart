import 'package:diabetes_app/app/features/medication/di.dart';
import 'package:get_it/get_it.dart';

// Feature-specific dependency injections
import 'features/auth/di.dart';
import 'features/glucose/di.dart';
import 'features/meal/di.dart';

// Global service locator instance
final GetIt serviceLocator = GetIt.instance;

class AppDependencyInjection {
  AppDependencyInjection();

  Future<void> init() async {
    // Initialize feature dependencies
    await AuthDependencyInjection(serviceLocator).init();
    await GlucoseDependencyInjection(serviceLocator).init();
    await MealDependencyInjection(serviceLocator).init();
    await MedicationDependencyInjection(serviceLocator).init();
  }

  // Helper method to get an instance of a registered type
  static T get<T extends Object>() => serviceLocator<T>();
}
