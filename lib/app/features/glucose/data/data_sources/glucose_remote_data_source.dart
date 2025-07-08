import 'package:diabetes_app/app/features/glucose/domain/entities/glucose/glucose.entity.dart';
import 'package:diabetes_app/app/features/glucose/domain/entities/glucose/response/glucose_response.entity.dart';
import 'package:dio/dio.dart';

import 'network_manager/glucose_network_manager.dart';

abstract class GlucoseRemoteDataSource {
  Future<GlucoseResponse?> getGlucoseReadings();
}

class GlucoseRemoteDataSourceImpl implements GlucoseRemoteDataSource {
  final GlucoseNetworkManager networkManager;

  GlucoseRemoteDataSourceImpl(this.networkManager);

  @override
  Future<GlucoseResponse?> getGlucoseReadings() async {
    return networkManager.getGlucoseReadings(null);
  }
}
