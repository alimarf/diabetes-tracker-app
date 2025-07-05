import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:diabetes_app/app/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:diabetes_app/app/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:diabetes_app/app/features/auth/domain/entities/login/payload/login_payload.entity.dart';
import 'package:diabetes_app/app/features/auth/domain/entities/login/response/login_response.entity.dart';
import 'package:diabetes_app/core/base/repository_response/repository_response.dart';
import 'package:dio/src/cancel_token.dart';

import '../../../../../core/exceptions/server_exception.dart';
import '../../../../../core/failure/failure.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<
      Either<RepositoryResponse<LoginResponse>,
          RepositoryResponse<LoginResponse>>> signIn(
      {required LoginPayload payload, CancelToken? cancelToken}) async {
    try {
      final result = await remoteDataSource.signIn(
        payload: payload,
        cancelToken: cancelToken,
      );
      return Right(RepositoryResponse(data: result));
    } on NetworkException catch (e) {
      return Left(RepositoryResponse(failure: NetworkFailure(e.message)));
    } on SocketException {
      return Left(RepositoryResponse(
          failure: const ConnectionFailure('Connection failed')));
    } catch (e) {
      rethrow;
    }
  }
}
