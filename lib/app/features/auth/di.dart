import 'package:get_it/get_it.dart';
import 'data/data_sources/auth_local_data_source.dart';
import 'data/data_sources/auth_remote_data_source.dart';
import 'data/data_sources/network_manager/auth_network_manager.dart';
import 'data/data_sources/storage_manager/auth_storage_manager.dart';
import 'data/repositories/auth_repository.dart';
import 'domain/repositories/auth_repository.dart' as auth_repo;
import 'domain/usecases/login.dart';
import 'initializer.dart';

class AuthDependencyInjection {
  final GetIt locator;

  AuthDependencyInjection(this.locator);

  Future<void> init() async {
    try {
      // Register storage manager only
      // AuthNetworkManager is now registered in the root DI
      locator.registerSingleton<AuthStorageManager>(
        AuthStorageManager(AuthInitializer.authKey),
      );

      // Register data sources
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

      // Register repositories
      locator.registerSingleton<auth_repo.AuthRepository>(
        AuthRepositoryImpl(
          remoteDataSource: locator<AuthRemoteDataSource>(),
          localDataSource: locator<AuthLocalDataSource>(),
        ),
      );

      // Register use cases
      locator.registerSingleton(
        Login(locator<auth_repo.AuthRepository>()),
      );
    } catch (e) {
      // Ignore registration errors - likely already registered
    }
  }

  // Helper method to get an instance of a registered type
  T get<T extends Object>() => locator<T>();
}
