// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.entity.freezed.dart';
part 'meal.entity.g.dart';

@freezed
class MealData with _$MealData {
  factory MealData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'mealType') String? mealType,
    @JsonKey(name: 'foodItems') String? foodItems,
    @JsonKey(name: 'carbsGrams') int? carbsGrams,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _MealData;

  factory MealData.fromJson(Map<String, dynamic> json) =>
      _$MealDataFromJson(json);
}
