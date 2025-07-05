import 'package:diabetes_app/app/features/auth/domain/entities/user/user.entity.dart';

import '../../../../../core/exceptions/cache_exception.dart';
import 'storage_manager/auth_storage_manager.dart';

abstract class AuthLocalDataSource {
  Future cacheUser(User user);
  Future<User?> getUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthStorageManager storageManager;

  AuthLocalDataSourceImpl({required this.storageManager});

  @override
  Future cacheUser(User user) async {
    try {
      storageManager.cacheUser(user);
    } catch (e) {
      throw CacheException(e.toString());
    }
  }

  @override
  Future<User?> getUser() async {
    try {
      return storageManager.getUser();
    } catch (e) {
      throw CacheException(e.toString());
    }
  }
}
