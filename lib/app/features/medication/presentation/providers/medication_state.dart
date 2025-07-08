import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/medication/medication.entity.dart';

part 'medication_state.freezed.dart';

@freezed
class MedicationState with _$MedicationState {
  factory MedicationState({
    @Default(false) bool isLoading,
    @Default([]) List<MedicationData> medications,
    @Default('') String error,
  }) = _MedicationState;
}
