import 'package:dartz/dartz.dart';
import 'package:diabetes_app/app/features/medication/domain/entities/medication/medication.entity.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../../../../../core/exceptions/server_exception.dart';
import '../../../../../core/failure/failure.dart';
import '../data_sources/medication_remote_data_source.dart';

abstract class MedicationRepository {
  Future<
      Either<RepositoryResponse<List<MedicationData>>,
          RepositoryResponse<List<MedicationData>>>> getMedications();
}

class MedicationRepositoryImpl implements MedicationRepository {
  final MedicationRemoteDataSource remoteDataSource;

  MedicationRepositoryImpl(this.remoteDataSource);

  @override
  Future<
      Either<RepositoryResponse<List<MedicationData>>,
          RepositoryResponse<List<MedicationData>>>> getMedications() async {
    try {
      final result = await remoteDataSource.getMedications();
      return Right(RepositoryResponse(data: result?.data));
    } on NetworkException catch (e) {
      return Left(
          RepositoryResponse(failure: NetworkFailure(e.message), data: null));
    } catch (e) {
      rethrow;
    }
  }
}
