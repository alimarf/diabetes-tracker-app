import 'package:dartz/dartz.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../entities/medication/medication.entity.dart';
import '../../data/repositories/medication_repository.dart';

class GetMedications {
  final MedicationRepository repository;

  GetMedications(this.repository);

  Future<
      Either<RepositoryResponse<List<MedicationData>>,
          RepositoryResponse<List<MedicationData>>>> execute() {
    return repository.getMedications();
  }
}
