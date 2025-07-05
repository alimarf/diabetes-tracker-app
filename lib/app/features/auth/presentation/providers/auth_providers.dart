import 'package:diabetes_app/core/services/auth_token_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:diabetes_app/app/features/auth/domain/usecases/login.dart';
import 'package:diabetes_app/app/features/auth/presentation/providers/auth_notifier.dart';
import 'package:diabetes_app/app/features/auth/presentation/providers/auth_state.dart';

import '../../data/repositories/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return GetIt.instance<AuthRepository>();
});

final loginUseCaseProvider = Provider<Login>((ref) {
  return GetIt.instance<Login>();
});

final authTokenManagerProvider = Provider<AuthTokenManager>((ref) {
  return GetIt.instance<AuthTokenManager>();
});

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  final loginUseCase = ref.watch(loginUseCaseProvider);
  final tokenManager = ref.watch(authTokenManagerProvider);

  return AuthNotifier(
    loginUseCase: loginUseCase,
    repository: repository,
    tokenManager: tokenManager,
  );
});
