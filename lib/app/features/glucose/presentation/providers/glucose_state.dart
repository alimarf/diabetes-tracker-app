import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/glucose/glucose.entity.dart';

part 'glucose_state.freezed.dart';

@freezed
class GlucoseState with _$GlucoseState {
  factory GlucoseState({
    @Default(false) bool isLoading,
    @Default([]) List<GlucoseData> glucoseReadings,
    @Default('') String error,
  }) = _GlucoseState;
}
