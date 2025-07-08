import 'package:dartz/dartz.dart';
import 'package:diabetes_app/core/exceptions/server_exception.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../../../../../core/failure/failure.dart';
import '../../domain/entities/glucose/glucose.entity.dart';
import '../../domain/entities/glucose/response/glucose_response.entity.dart';
import '../data_sources/glucose_remote_data_source.dart';

abstract class GlucoseRepository {
  Future<
      Either<RepositoryResponse<List<GlucoseData>>,
          RepositoryResponse<List<GlucoseData>>>> getGlucoseReadings();
}

class GlucoseRepositoryImpl implements GlucoseRepository {
  final GlucoseRemoteDataSource remoteDataSource;

  GlucoseRepositoryImpl(this.remoteDataSource);

  @override
  Future<
      Either<RepositoryResponse<List<GlucoseData>>,
          RepositoryResponse<List<GlucoseData>>>> getGlucoseReadings() async {
    try {
      final result = await remoteDataSource.getGlucoseReadings();
      return Right(RepositoryResponse(data: result?.data));
    } on NetworkException catch (e) {
      return Left(
          RepositoryResponse(failure: NetworkFailure(e.message), data: null));
    } catch (e) {
      rethrow;
    }
  }
}
