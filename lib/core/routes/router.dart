import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../service/auth/auth_provider.dart';
import '../utils/logger.dart';
import 'route_path.dart';
import 'routes.dart';

part 'router.g.dart';

final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
GoRouter router(RouterRef ref) {
  final isAuth = ValueNotifier<AsyncValue<bool>>(const AsyncLoading());
  ref
    ..onDispose(isAuth.dispose)
    ..listen(
        authProvider.select((value) => value.whenData((value) => value.isAuth)),
        (_, next) {
      isAuth.value = next;
      if (isAuth.value.hasValue) {
        Logger.d('웹 시작 완료');
      }
    });

  final router = GoRouter(
    navigatorKey: routerKey,
    refreshListenable: isAuth,
    initialLocation: RoutePath.home,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    redirect: (context, state) async {
      // if (isAuth.value.isLoading || !isAuth.value.hasValue) {
      //   Logger.d('회원 인증 중...');
      //   return RoutePath.splash;
      // }
      // if (state.matchedLocation == RoutePath.splash) {
      //   Logger.d('회원 인증 완료');
      //   return RoutePath.home;
      // }
      // if (state.matchedLocation == RoutePath.myMenu) {
      //   ref.read(authProvider.notifier).refresh();
      // }
      return null;
    },
  );

  ref.onDispose(router.dispose);

  return router;
}

const _noAuth = [
  RoutePath.splash,
  RoutePath.signUp,
  RoutePath.signIn,
];
