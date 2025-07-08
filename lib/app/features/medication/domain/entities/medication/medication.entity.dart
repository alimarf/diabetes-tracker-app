import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication.entity.freezed.dart';
part 'medication.entity.g.dart';

@freezed
class MedicationData with _$MedicationData {
  const factory MedicationData({
    required String id,
    required String name,
    required String dosage,
    required String status,
    required DateTime timestamp,
    String? notes,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MedicationData;

  factory MedicationData.fromJson(Map<String, dynamic> json) =>
      _$MedicationDataFromJson(json);
}
