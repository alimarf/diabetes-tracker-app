// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'glucose.entity.freezed.dart';
part 'glucose.entity.g.dart';

@freezed
class GlucoseData with _$GlucoseData {
  factory GlucoseData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _GlucoseData;

  factory GlucoseData.fromJson(Map<String, dynamic> json) =>
      _$GlucoseDataFromJson(json);
}
