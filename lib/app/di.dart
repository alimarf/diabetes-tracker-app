import 'package:get_it/get_it.dart';

// Feature-specific dependency injections
import 'features/auth/di.dart';

// Global service locator instance
final GetIt serviceLocator = GetIt.instance;

class AppDependencyInjection {
  AppDependencyInjection();

  Future<void> init() async {
    // Initialize feature dependencies
    await AuthDependencyInjection(serviceLocator).init();
  }

  // Helper method to get an instance of a registered type
  static T get<T extends Object>() => serviceLocator<T>();
}
