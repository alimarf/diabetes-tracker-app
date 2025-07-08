import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecase/get_meals.dart';
import 'meal_state.dart';

class MealNotifier extends StateNotifier<MealState> {
  final GetMeals? getMealsUseCase;

  MealNotifier({this.getMealsUseCase}) : super(MealState());

  Future<void> getMeals() async {
    state = state.copyWith(isLoading: true, error: '');

    try {
      final response = await getMealsUseCase!.execute();

      response.fold(
        (l) {
          state = state.copyWith(
            isLoading: false,
            error: l.failure?.message ?? 'Failed to get meals',
          );
        },
        (r) {
          state = state.copyWith(
            isLoading: false,
            meals: r.data ?? [],
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error: $e',
      );
    }
  }
}
