import 'dart:async';
import 'dart:ui';

import 'package:alphagoing/core/theme/app_theme.dart';
import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import 'core/routes/router.dart';
import 'core/utils/logger.dart';
import 'firebase_options.dart';
import 'injector/injector.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      KakaoSdk.init(
        nativeAppKey: '92454be91576472d9d8fa46f29ef74bc',
        javaScriptAppKey: 'b16e63cc5a810f31429f0bf2814bd95f',
      );
      print(await KakaoSdk.origin);
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      // await AppConfigs.init();
      configureDependencies();

      runApp(
        const ProviderScope(
          child: AlphaGoingApp(),
        ),
      );
    },
    (error, stack) {
      Logger.e(error, error, stack);
    },
  );
}

class AlphaGoingApp extends ConsumerStatefulWidget {
  const AlphaGoingApp({super.key});

  @override
  ConsumerState<AlphaGoingApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<AlphaGoingApp> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);

    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp.router(
        routerConfig: router,
        title: '알파GOING',
        debugShowCheckedModeBanner: false,
        theme: kAppTheme,
        scrollBehavior: const ScrollBehavior()
            .copyWith(dragDevices: PointerDeviceKind.values.toSet()),
        builder: (context, child) => Overlay(
          initialEntries: [
            if (child != null) ...[
              OverlayEntry(
                builder: (context) => child,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
