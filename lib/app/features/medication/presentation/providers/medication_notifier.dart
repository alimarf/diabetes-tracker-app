import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecase/get_medications.dart';
import 'medication_state.dart';

class MedicationNotifier extends StateNotifier<MedicationState> {
  final GetMedications? getMedicationsUseCase;

  MedicationNotifier({this.getMedicationsUseCase}) : super(MedicationState());

  Future<void> getMedications() async {
    state = state.copyWith(isLoading: true, error: '');

    try {
      final response = await getMedicationsUseCase!.execute();

      response.fold(
        (l) {
          state = state.copyWith(
            isLoading: false,
            error: l.failure?.message ?? 'Failed to get meals',
          );
        },
        (r) {
          state = state.copyWith(
            isLoading: false,
            medications: r.data ?? [],
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
