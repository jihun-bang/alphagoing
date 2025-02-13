import 'package:alphagoing/features/notice/presentation/pages/notice_page.dart';
import 'package:alphagoing/features/sign_up/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auto_posting/presentation/pages/auto_posting_page.dart';
import '../../features/event/presentation/pages/event_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/keyword_analyzer/presentation/pages/keyword_analyzer_page.dart';
import '../../features/navigation/presentation/pages/navigation_page.dart';
import '../../features/price_info/presentation/pages/price_info_page.dart';
import '../../features/sign_in/presentation/pages/sign_in_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import 'route_path.dart';

part 'routes.g.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

@TypedStatefulShellRoute<NavigationRoute>(
  branches: [
    TypedStatefulShellBranch<HomeShellBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: RoutePath.home,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<NoticeShellBranch>(
      routes: [
        TypedGoRoute<NoticeRoute>(
          path: RoutePath.notice,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<EventShellBranch>(
      routes: [
        TypedGoRoute<EventRoute>(
          path: RoutePath.event,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<PriceInfoShellBranch>(
      routes: [
        TypedGoRoute<PriceInfoRoute>(
          path: RoutePath.price,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<KeywordAnalyzerShellBranch>(
      routes: [
        TypedGoRoute<KeywordAnalyzerRoute>(
          path: RoutePath.keywordAnalyzer,
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<AutoPostingShellBranch>(
      routes: [
        TypedGoRoute<AutoPostingRoute>(
          path: RoutePath.autoPosting,
          routes: [],
        ),
      ],
    ),
  ],
)
class NavigationRoute extends StatefulShellRouteData {
  static final $navigatorKey = _shellNavigatorKey;

  const NavigationRoute();

  @override
  Widget builder(context, state, navigationShell) =>
      NavigationPage(navigationShell: navigationShell);
}

@TypedGoRoute<SplashRoute>(path: RoutePath.splash)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: SplashPage());
}

class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: HomePage());
}

class NoticeShellBranch extends StatefulShellBranchData {
  const NoticeShellBranch();
}

class NoticeRoute extends GoRouteData {
  const NoticeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: NoticePage());
}

class EventShellBranch extends StatefulShellBranchData {
  const EventShellBranch();
}

class EventRoute extends GoRouteData {
  const EventRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: EventPage());
}

class PriceInfoShellBranch extends StatefulShellBranchData {
  const PriceInfoShellBranch();
}

class PriceInfoRoute extends GoRouteData {
  const PriceInfoRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: PriceInfoPage());
}

class KeywordAnalyzerShellBranch extends StatefulShellBranchData {
  const KeywordAnalyzerShellBranch();
}

class KeywordAnalyzerRoute extends GoRouteData {
  const KeywordAnalyzerRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: KeywordAnalyzerPage());
}

class AutoPostingShellBranch extends StatefulShellBranchData {
  const AutoPostingShellBranch();
}

class AutoPostingRoute extends GoRouteData {
  const AutoPostingRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(child: AutoPostingPage());
}

@TypedGoRoute<SignInRoute>(path: RoutePath.signIn)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

@TypedGoRoute<SignUpRoute>(path: RoutePath.signUp)
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignUpPage();
  }
}
