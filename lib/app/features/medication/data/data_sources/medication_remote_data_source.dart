import '../../domain/entities/medication/response/medication_response.entity.dart';
import 'network_manager/medication_network_manager.dart';

abstract class MedicationRemoteDataSource {
  Future<MedicationResponse?> getMedications();
}

class MedicationRemoteDataSourceImpl implements MedicationRemoteDataSource {
  final MedicationNetworkManager networkManager;

  MedicationRemoteDataSourceImpl(this.networkManager);

  @override
  Future<MedicationResponse?> getMedications() async {
    return networkManager.getMedications(null);
  }
}
