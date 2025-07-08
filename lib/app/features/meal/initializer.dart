import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class MealInitializer {
  MealInitializer();

  static const String mealKey = 'meal-user';

  Future<void> run() async {
    await _initStorage();
  }

  Future<void> _initStorage() async {
    Hive.init((await getApplicationDocumentsDirectory()).path);

    await Hive.openBox(mealKey);
  }
}
