import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecase/get_meals.dart';
import 'meal_notifier.dart';
import 'meal_state.dart';

final mealsUseCaseProvider = Provider<GetMeals>((ref) {
  return GetIt.instance<GetMeals>();
});

final mealProvider =
    StateNotifierProvider<MealNotifier, MealState>((ref) {
  final getMealsUseCase = ref.watch(mealsUseCaseProvider);
  
  return MealNotifier(
    getMealsUseCase: getMealsUseCase,
  );
});
