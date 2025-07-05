import 'dart:convert';

import 'package:diabetes_app/core/utils/encryption/encryption.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/user/user.entity.dart';

class AuthStorageManager {
  late final String _authKey;
  late final Box _box;

  AuthStorageManager(String authKey) {
    _authKey = authKey;
    _box = Hive.box(_authKey);
  }

  void cacheUser(User user) {
    _box.put('$_authKey-user', jsonEncode(user.toJson()).encrypt());
  }

  User? getUser() {
    final cache = _box.get('$_authKey-user');

    if (cache != null) {
      return User.fromJson(jsonDecode(cache.toString().decrypt()));
    } else {
      return null;
    }
  }

  Future<int> clear() async {
    return await _box.clear();
  }
}
