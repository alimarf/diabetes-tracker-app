import 'package:hive/hive.dart';

/// Manages authentication tokens using Hive for storage
class AuthTokenManager {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _tokenExpiryKey = 'token_expiry';

  final Box _box;

  AuthTokenManager() : _box = Hive.box('auth');

  Future<String?> getAccessToken() async {
    return _box.get(_accessTokenKey);
  }

  String? getRefreshToken() {
    return _box.get(_refreshTokenKey);
  }

  Future<void> clear() async {
    await _box.clear();
  }
  
  Future<bool> isTokenValid() async {
    final token = await getAccessToken();
    if (token == null) return false;
    
    final expiry = _box.get(_tokenExpiryKey);
    if (expiry == null) return true; // If no expiry set, assume valid
    
    final expiryDateTime = DateTime.fromMillisecondsSinceEpoch(expiry);
    return expiryDateTime.isAfter(DateTime.now());
  }

  Future<void> put({
    required String accessToken,
    String? refreshToken,
    DateTime? expiryDateTime,
  }) async {
    await _box.put(_accessTokenKey, accessToken);
    
    if (refreshToken != null) {
      await _box.put(_refreshTokenKey, refreshToken);
    }
    
    if (expiryDateTime != null) {
      await _box.put(_tokenExpiryKey, expiryDateTime.millisecondsSinceEpoch);
    }
  }
}
