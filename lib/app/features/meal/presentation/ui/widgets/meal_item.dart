import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/meal/meal.entity.dart';

class MealItem extends StatelessWidget {
  final MealData meal;
  
  const MealItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    final DateTime timestamp = DateTime.parse(meal.timestamp ?? '');
    final String formattedDate = DateFormat('MMM dd, yyyy').format(timestamp);
    final String formattedTime = DateFormat('hh:mm a').format(timestamp);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  meal.mealType ?? 'Meal',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  '$formattedDate at $formattedTime',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Food: ${meal.foodItems ?? 'Not specified'}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              'Carbs: ${meal.carbsGrams ?? 0}g',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
