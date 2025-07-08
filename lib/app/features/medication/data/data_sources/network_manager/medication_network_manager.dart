import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/medication/response/medication_response.entity.dart';

part 'medication_network_manager.g.dart';

@RestApi()
abstract class MedicationNetworkManager {
  factory MedicationNetworkManager(Dio dio) = _MedicationNetworkManager;

  @GET('/medications')
  Future<MedicationResponse?> getMedications(
    @CancelRequest() CancelToken? cancelToken,
  );
}
