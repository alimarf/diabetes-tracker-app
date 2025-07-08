import 'package:dartz/dartz.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../entities/meal/meal.entity.dart';
import '../../data/repositories/meal_repository.dart';

class GetMeals {
  final MealRepository repository;

  GetMeals(this.repository);

  Future<
      Either<RepositoryResponse<List<MealData>>,
          RepositoryResponse<List<MealData>>>> execute() {
    return repository.getMeals();
  }
}
