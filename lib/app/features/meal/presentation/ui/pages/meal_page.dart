import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/meal_providers.dart';
import '../../providers/meal_state.dart';
import '../widgets/meal_item.dart';

class MealPage extends ConsumerStatefulWidget {
  const MealPage({super.key});

  @override
  ConsumerState<MealPage> createState() => _MealPageState();
}

class _MealPageState extends ConsumerState<MealPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchMeals();
    });
  }

  void _fetchMeals() {
    final mealNotifier = ref.read(mealProvider.notifier);
    mealNotifier.getMeals();
  }

  @override
  Widget build(BuildContext context) {
    final mealState = ref.watch(mealProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _fetchMeals,
          ),
        ],
      ),
      body: _buildBody(mealState),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add meal page (to be implemented)
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(MealState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error.isNotEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Error: ${state.error}',
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _fetchMeals,
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (state.meals.isEmpty) {
      return const Center(
        child: Text('No meals found. Add your first meal!'),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        _fetchMeals();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.meals.length,
        itemBuilder: (context, index) {
          final meal = state.meals[index];
          return MealItem(meal: meal);
        },
      ),
    );
  }
}
