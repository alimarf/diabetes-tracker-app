import 'package:diabetes_app/app/features/medication/data/data_sources/medication_remote_data_source.dart';
import 'package:diabetes_app/app/features/medication/data/data_sources/network_manager/medication_network_manager.dart';
import 'package:diabetes_app/app/features/medication/data/repositories/medication_repository.dart';
import 'package:diabetes_app/app/features/medication/domain/usecase/get_medications.dart';
import 'package:get_it/get_it.dart';

import '../../../core/networking/api_client.dart';


class MedicationDependencyInjection {
  final GetIt locator;

  MedicationDependencyInjection(this.locator);

  Future<void> init() async {
    try {
      // Register network manager
      locator.registerFactory<MedicationNetworkManager>(
        () => MedicationNetworkManager(locator<ApiClient>().dio),
      );

      // Register remote data source
      locator.registerFactory<MedicationRemoteDataSource>(
        () => MedicationRemoteDataSourceImpl(
          locator<MedicationNetworkManager>(),
        ),
      );

      // Register repository
      locator.registerFactory<MedicationRepository>(
        () => MedicationRepositoryImpl(
          locator<MedicationRemoteDataSource>(),
        ),
      );

      // Register Usecase
      locator.registerFactory<GetMedications>(
        () => GetMedications(locator<MedicationRepository>()),
      );
    } catch (e) {}
  }

  T get<T extends Object>() => locator<T>();
}
