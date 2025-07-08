// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../glucose.entity.dart';

part 'glucose_response.entity.freezed.dart';
part 'glucose_response.entity.g.dart';

@freezed
class GlucoseResponse with _$GlucoseResponse {
  factory GlucoseResponse({
    @JsonKey(name: 'status_code') int? statusCode,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<GlucoseData>? data,
  }) = _GlucoseResponse;

  factory GlucoseResponse.fromJson(Map<String, dynamic> json) =>
      _$GlucoseResponseFromJson(json);
}
