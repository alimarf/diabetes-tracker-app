import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:diabetes_app/app/features/auth/domain/usecases/login.dart';
import 'package:diabetes_app/app/features/auth/presentation/providers/auth_state.dart';
import 'package:diabetes_app/app/features/auth/domain/entities/login/payload/login_payload.entity.dart';

import '../../../../../core/services/auth_token_manager.dart';
import '../../data/repositories/auth_repository.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final Login loginUseCase;
  final AuthTokenManager tokenManager;
  final AuthRepository repository;

  AuthNotifier({
    required this.loginUseCase,
    required this.tokenManager,
    required this.repository,
  }) : super(const AuthState());

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AuthState(isLoading: true, errorMessage: null);

    try {
      final payload = LoginPayload(
        email: email,
        password: password,
      );

      final result = await loginUseCase.execute(
        payload: payload,
      );

      result.fold(
        (failure) {
          state = const AuthState(
            isLoading: false,
            isAuthenticated: false,
            errorMessage: 'Authentication failed',
          );
        },
        (response) {
          final loginData = response.data;
          final token = loginData?.data?.token;
          final userId = loginData?.data?.user?.id?.toString();
          tokenManager.put(accessToken: token!);

          state = AuthState(
            isLoading: false,
            isAuthenticated: true,
            token: token,
            userId: userId,
            errorMessage: null,
          );
        },
      );
    } catch (e) {
      state = AuthState(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> checkAuthStatus() async {
    state = const AuthState(isLoading: true);

    try {
      final hasToken = await tokenManager.getAccessToken() != null;

      state = AuthState(
        isLoading: false,
        isAuthenticated: hasToken,
      );
    } catch (e) {
      state = const AuthState(
        isLoading: false,
        isAuthenticated: false,
        errorMessage: 'Failed to verify authentication status',
      );
    }
  }

  Future<void> logout() async {
    state = const AuthState(isLoading: true);

    try {
      await tokenManager.clear();

      state = const AuthState();
    } catch (e) {
      state = AuthState(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }
}
