import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/login/payload/login_payload.entity.dart';
import '../../../domain/entities/login/response/login_response.entity.dart';

part 'auth_network_manager.g.dart';

@RestApi()
abstract class AuthNetworkManager {
  factory AuthNetworkManager(Dio dio) = _AuthNetworkManager;

  @POST('/auth/login')
  Future<LoginResponse?> signIn(
    @CancelRequest() CancelToken? cancelToken, {
    @Body() required LoginPayload payload,
  });
}
