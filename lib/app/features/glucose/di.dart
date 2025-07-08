import 'package:diabetes_app/app/features/glucose/domain/usecase/get_glucose_readings.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/networking/api_client.dart';
import 'data/data_sources/glucose_remote_data_source.dart';
import 'data/data_sources/network_manager/glucose_network_manager.dart';
import 'data/repositories/glucose_repository.dart';

class GlucoseDependencyInjection {
  final GetIt locator;

  GlucoseDependencyInjection(this.locator);

  Future<void> init() async {
    try {
      // Register network manager
      locator.registerFactory<GlucoseNetworkManager>(
        () => GlucoseNetworkManager(locator<ApiClient>().dio),
      );

      // Register remote data source
      locator.registerFactory<GlucoseRemoteDataSource>(
        () => GlucoseRemoteDataSourceImpl(
          locator<GlucoseNetworkManager>(),
        ),
      );

      // Register repository
      locator.registerFactory<GlucoseRepository>(
        () => GlucoseRepositoryImpl(
          locator<GlucoseRemoteDataSource>(),
        ),
      );

      // Register Usecase
      locator.registerFactory<GetGlucoseReadings>(
        () => GetGlucoseReadings(locator<GlucoseRepository>()),
      );
    } catch (e) {}
  }

  T get<T extends Object>() => locator<T>();
}
