import 'package:diabetes_app/app/features/glucose/domain/usecase/get_glucose_readings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'glucose_notifier.dart';
import 'glucose_state.dart';

final glucoseUseCaseProvider = Provider<GetGlucoseReadings>((ref) {
  return GetIt.instance<GetGlucoseReadings>();
});

final glucoseNotifierProvider =
    StateNotifierProvider<GlucoseNotifier, GlucoseState>((ref) {
  final glucoseUseCase = ref.watch(glucoseUseCaseProvider);

  return GlucoseNotifier(
    getGlucoseReadingsUseCase: glucoseUseCase,
  );
});