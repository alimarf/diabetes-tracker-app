import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/glucose_repository.dart';
import '../../domain/entities/glucose/glucose.entity.dart';
import '../../domain/usecase/get_glucose_readings.dart';
import 'glucose_state.dart';

class GlucoseNotifier extends StateNotifier<GlucoseState> {
  final GetGlucoseReadings? getGlucoseReadingsUseCase;

  GlucoseNotifier({this.getGlucoseReadingsUseCase}) : super(GlucoseState());

  Future<void> getGlucoseReadings() async {
    state = state.copyWith(isLoading: true, error: '');

    try {
      final response = await getGlucoseReadingsUseCase!.execute();

      response.fold(
        (l) {
          state = state.copyWith(
            isLoading: false,
            error: l.failure?.message ?? 'Failed to get glucose readings',
          );
        },
        (r) {
          state = state.copyWith(
            isLoading: false,
            glucoseReadings: r.data ?? [],
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error: $e',
      );
    }
  }
}
