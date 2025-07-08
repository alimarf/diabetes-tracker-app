import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/meal/response/meal_response.entity.dart';

part 'meal_network_manager.g.dart';

@RestApi()
abstract class MealNetworkManager {
  factory MealNetworkManager(Dio dio) = _MealNetworkManager;

  @GET('/meals')
  Future<MealResponse?> getMeals(
    @CancelRequest() CancelToken? cancelToken,
  );
}
