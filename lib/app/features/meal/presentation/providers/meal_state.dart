import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/meal/meal.entity.dart';

part 'meal_state.freezed.dart';

@freezed
class MealState with _$MealState {
  factory MealState({
    @Default(false) bool isLoading,
    @Default([]) List<MealData> meals,
    @Default('') String error,
  }) = _MealState;
}
