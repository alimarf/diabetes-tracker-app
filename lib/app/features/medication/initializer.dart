import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class MedicationInitializer {
  MedicationInitializer();

  static const String medicationKey = 'medication-user';

  Future<void> run() async {
    await _initStorage();
  }

  Future<void> _initStorage() async {
    Hive.init((await getApplicationDocumentsDirectory()).path);

    await Hive.openBox(medicationKey);
  }
}
