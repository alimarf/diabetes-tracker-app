import 'package:get_it/get_it.dart';

import '../../../core/networking/api_client.dart';
import 'data/data_sources/meal_remote_data_source.dart';
import 'data/data_sources/network_manager/meal_network_manager.dart';
import 'data/repositories/meal_repository.dart';
import 'domain/usecase/get_meals.dart';

class MealDependencyInjection {
  final GetIt locator;

  MealDependencyInjection(this.locator);

  Future<void> init() async {
    try {
      // Register network manager
      locator.registerFactory<MealNetworkManager>(
        () => MealNetworkManager(locator<ApiClient>().dio),
      );

      // Register remote data source
      locator.registerFactory<MealRemoteDataSource>(
        () => MealRemoteDataSourceImpl(
          locator<MealNetworkManager>(),
        ),
      );

      // Register repository
      locator.registerFactory<MealRepository>(
        () => MealRepositoryImpl(
          locator<MealRemoteDataSource>(),
        ),
      );

      // Register Usecase
      locator.registerFactory<GetMeals>(
        () => GetMeals(locator<MealRepository>()),
      );
    } catch (e) {}
  }

  T get<T extends Object>() => locator<T>();
}
