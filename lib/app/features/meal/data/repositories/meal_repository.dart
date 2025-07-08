import 'package:dartz/dartz.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../../../../../core/exceptions/server_exception.dart';
import '../../../../../core/failure/failure.dart';
import '../../domain/entities/meal/meal.entity.dart';
import '../data_sources/meal_remote_data_source.dart';

abstract class MealRepository {
  Future<
      Either<RepositoryResponse<List<MealData>>,
          RepositoryResponse<List<MealData>>>> getMeals();
}

class MealRepositoryImpl implements MealRepository {
  final MealRemoteDataSource remoteDataSource;

  MealRepositoryImpl(this.remoteDataSource);

  @override
  Future<
      Either<RepositoryResponse<List<MealData>>,
          RepositoryResponse<List<MealData>>>> getMeals() async {
    try {
      final result = await remoteDataSource.getMeals();
      return Right(RepositoryResponse(data: result?.data));
    } on NetworkException catch (e) {
      return Left(
          RepositoryResponse(failure: NetworkFailure(e.message), data: null));
    } catch (e) {
      rethrow;
    }
  }
}
