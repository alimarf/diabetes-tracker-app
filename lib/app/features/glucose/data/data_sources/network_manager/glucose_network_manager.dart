import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/glucose/response/glucose_response.entity.dart';

part 'glucose_network_manager.g.dart';

@RestApi()
abstract class GlucoseNetworkManager {
  factory GlucoseNetworkManager(Dio dio) = _GlucoseNetworkManager;

  @GET('/glucose')
  Future<GlucoseResponse?> getGlucoseReadings(
    @CancelRequest() CancelToken? cancelToken,
  );
}
