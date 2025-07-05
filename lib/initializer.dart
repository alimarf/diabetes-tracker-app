import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'core/config/app_config.dart';

class Initializer {
  final AppConfig appConfig;

  Initializer(this.appConfig);

  Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _initStorage();
  }

  Future<void> _initStorage() async {
    Hive.init((await getApplicationDocumentsDirectory()).path);

    await Hive.openBox('auth');
  }
}
