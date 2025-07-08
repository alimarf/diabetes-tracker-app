import '../../domain/entities/meal/response/meal_response.entity.dart';
import 'network_manager/meal_network_manager.dart';

abstract class MealRemoteDataSource {
  Future<MealResponse?> getMeals();
}

class MealRemoteDataSourceImpl implements MealRemoteDataSource {
  final MealNetworkManager networkManager;

  MealRemoteDataSourceImpl(this.networkManager);

  @override
  Future<MealResponse?> getMeals() async {
    return networkManager.getMeals(null);
  }
}
