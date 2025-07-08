// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../meal.entity.dart';

part 'meal_response.entity.freezed.dart';
part 'meal_response.entity.g.dart';

@freezed
class MealResponse with _$MealResponse {
  factory MealResponse({
    @JsonKey(name: 'status_code') int? statusCode,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<MealData>? data,
  }) = _MealResponse;

  factory MealResponse.fromJson(Map<String, dynamic> json) =>
      _$MealResponseFromJson(json);
}
