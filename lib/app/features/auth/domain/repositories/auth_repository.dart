import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:diabetes_app/app/features/auth/domain/entities/login/payload/login_payload.entity.dart';
import 'package:diabetes_app/app/features/auth/domain/entities/login/response/login_response.entity.dart';
import 'package:diabetes_app/core/base/repository_response/repository_response.dart';

abstract class AuthRepository {
  Future<
      Either<RepositoryResponse<LoginResponse>,
          RepositoryResponse<LoginResponse>>> signIn({
    required LoginPayload payload,
    CancelToken? cancelToken,
  });
}
