import 'package:dartz/dartz.dart';

import 'package:diabetes_app/app/features/glucose/data/repositories/glucose_repository.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../entities/glucose/glucose.entity.dart';

class GetGlucoseReadings {
  final GlucoseRepository repository;

  GetGlucoseReadings(this.repository);

  Future<
      Either<RepositoryResponse<List<GlucoseData>>,
          RepositoryResponse<List<GlucoseData>>>> execute() {
    return repository.getGlucoseReadings();
  }
}
