import 'package:diabetes_app/core/networking/api_client.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'data/data_sources/auth_local_data_source.dart';
import 'data/data_sources/auth_remote_data_source.dart';
import 'data/data_sources/network_manager/auth_network_manager.dart';
import 'data/data_sources/storage_manager/auth_storage_manager.dart';
import 'data/repositories/auth_repository.dart';
import 'domain/usecases/login.dart';
import 'initializer.dart';

class AuthDependencyInjection {
  final GetIt locator;

  AuthDependencyInjection(this.locator);

  Future<void> init() async {
    try {
      locator.registerSingleton<AuthNetworkManager>(
        AuthNetworkManager(locator<ApiClient>().dio),
      );

      locator.registerSingleton<AuthStorageManager>(
        AuthStorageManager(AuthInitializer.authKey),
      );

      locator.registerSingleton<AuthRemoteDataSource>(
        AuthRemoteDataSourceImpl(
          locator<AuthNetworkManager>(),
        ),
      );

      locator.registerSingleton<AuthLocalDataSource>(
        AuthLocalDataSourceImpl(
          storageManager: locator<AuthStorageManager>(),
        ),
      );

      locator.registerSingleton<AuthRepository>(
        AuthRepositoryImpl(
          remoteDataSource: locator<AuthRemoteDataSource>(),
          localDataSource: locator<AuthLocalDataSource>(),
        ),
      );

      locator.registerSingleton(
        Login(locator<AuthRepository>()),
      );
    } catch (e) {}
  }

  T get<T extends Object>() => locator<T>();
}
