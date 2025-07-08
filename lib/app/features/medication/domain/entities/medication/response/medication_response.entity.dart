import 'package:freezed_annotation/freezed_annotation.dart';

import '../medication.entity.dart';

part 'medication_response.entity.freezed.dart';
part 'medication_response.entity.g.dart';

@freezed
class MedicationResponse with _$MedicationResponse {
  const factory MedicationResponse({
    @JsonKey(name: 'status_code') required int statusCode,
    required String message,
    required List<MedicationData> data,
  }) = _MedicationResponse;

  factory MedicationResponse.fromJson(Map<String, dynamic> json) =>
      _$MedicationResponseFromJson(json);
}
