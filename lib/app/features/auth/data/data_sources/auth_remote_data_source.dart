import 'package:diabetes_app/app/features/auth/domain/entities/login/payload/login_payload.entity.dart';
import 'package:diabetes_app/app/features/auth/domain/entities/login/response/login_response.entity.dart';
import 'package:diabetes_app/core/exceptions/exception_handler.dart';
import 'package:diabetes_app/core/exceptions/server_exception.dart';
import 'package:dio/dio.dart';

import 'network_manager/auth_network_manager.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse?> signIn({
    required LoginPayload payload,
    CancelToken? cancelToken,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthNetworkManager networkManager;

  AuthRemoteDataSourceImpl(this.networkManager);

  @override
  Future<LoginResponse?> signIn({
    required LoginPayload payload,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await networkManager.signIn(
        cancelToken,
        payload: payload,
      );

      if (response != null) {
        return response;
      } else {
        // throw NetworkException(response?.message ?? 'Error');
        throw NetworkException('Error');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        String? message = '';
        if (e.response?.data['Messages'] is List) {
          message = (e.response?.data['Messages'] as List).join('\n');
        } else if (e.response?.data['Messages'] is String) {
          message = e.response?.data['Messages'];
        }

        throw NetworkException(ExceptionHandler.getExceptionMessage(message));
      } else {
        throw NetworkException(ExceptionHandler.getExceptionMessage(e));
      }
    }
  }
}
