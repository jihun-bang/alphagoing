import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/data/local/app_storage.dart';
import '../../core/data/local/storage_key.dart';
import '../../core/data/remote/network/dio_network_service.dart';
import '../../core/utils/logger.dart';
import '../../features/sign_in/data/models/oauth_request_model.dart';
import '../../features/sign_in/data/models/sign_in_request_model.dart';
import '../../injector/injector.dart';
import 'data/data_source/auth_storage.dart';
import 'data/models/user_model.dart';
import 'domain/use_cases/auth_usecases.dart';
import 'domain/use_cases/user_use_case.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  late AuthUseCase _authUseCase;
  late UserUseCase _userUseCase;
  late DioNetworkService _dio;

  @override
  Future<UserModel> build() async {
    _authUseCase = getIt();
    _userUseCase = getIt();
    _dio = getIt();
    _dio.updateHeader(
      {'Access-Token': AuthStorage.accessToken},
    );

    _persistenceRefreshLogic();
    return _loginRecoveryAttempt();
  }

  SignedIn? get currentUser {
    final user = state.value;
    return user is SignedIn ? user : null;
  }

  bool get isAuth {
    return currentUser?.isAuth == true;
  }

  Future<UserModel> _loginRecoveryAttempt() async {
    try {
      print('login recovery attempt');
      final savedToken = AuthStorage.accessToken;
      if (savedToken == null) {
        return const UserModel.signedOut('No Token');
      }
      return _loginWithToken();
    } catch (_, __) {
      AuthStorage.reset().ignore();
      return Future.value(const UserModel.signedOut());
    }
  }

  Future<void> signOut() async {
    state = const AsyncData(UserModel.signedOut());
    await AuthStorage.reset();
    _dio.updateHeader({'Access-Token': null});
  }

  Future<UserModel> signInWithEmail(SignInRequestModel request) async {
    final user = await _authUseCase.signInWithEmail(model: request);
    state = AsyncData(user);
    return user;
  }

  Future<dynamic> signInWithOauth(OauthRequestModel request) async {
    final user = await _authUseCase.signInWithOauth(model: request);
    if (user is SignedIn) {
      AppStorage.set(AppStorageKey.latestSignIn, request.provider.name);
      state = AsyncData(user);
    } else {
      state = const AsyncData(SignedOut());
    }
    return user;
  }

  Future<UserModel> _loginWithToken() async {
    final savedToken = AuthStorage.accessToken;
    if (savedToken != null) {
      final user = await _userUseCase.fetch();
      return user;
    }
    return const SignedOut();
  }

  Future<void> refresh() async {
    final savedToken = AuthStorage.accessToken;
    if (savedToken != null) {
      final user = await _userUseCase.fetch();
      if (user != state.value) {
        state = AsyncData(user);
      }
    } else {
      state = const AsyncData(SignedOut());
    }
  }

  void _persistenceRefreshLogic() {
    ref.listenSelf((_, next) {
      if (next.isLoading) return;
      if (next.hasError) {
        signOut();
        Logger.e(next.error);
        return;
      }
      next.requireValue.map(
        signedIn: (user) {},
        signedOut: (_) {
          AuthStorage.reset();
          _dio.updateHeader({'Access-Token': null});
        },
      );
    });
  }
}
