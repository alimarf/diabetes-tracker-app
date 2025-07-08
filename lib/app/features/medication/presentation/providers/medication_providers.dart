import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecase/get_medications.dart';
import 'medication_notifier.dart';
import 'medication_state.dart';

final getMedicationsUseCaseProvider = Provider<GetMedications>((ref) {
  return GetIt.instance<GetMedications>();
});

final medicationProvider =
    StateNotifierProvider<MedicationNotifier, MedicationState>((ref) {
  final getMedicationsUseCase = ref.watch(getMedicationsUseCaseProvider);
  
  return MedicationNotifier(
    getMedicationsUseCase: getMedicationsUseCase,
  );
});
