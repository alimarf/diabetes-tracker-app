import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isAuthenticated,
    @Default(null) String? errorMessage,
    @Default(null) String? token,
    @Default(null) String? userId,
  }) = _AuthState;
}
