import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/base/repository_response/repository_response.dart';
import '../../data/repositories/auth_repository.dart';
import '../entities/login/payload/login_payload.entity.dart';
import '../entities/login/response/login_response.entity.dart';

class Login {
  final AuthRepository repository;

  Login(this.repository);

  Future<
      Either<RepositoryResponse<LoginResponse>,
          RepositoryResponse<LoginResponse>>> execute(
      {required LoginPayload payload, CancelToken? cancelToken}) {
    return repository.signIn(
      payload: payload,
      cancelToken: cancelToken,
    );
  }
}
