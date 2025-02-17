import 'dart:async';
import 'dart:ui';

import 'package:alphagoing/core/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
      await Supabase.initialize(
        url: 'https://pxyhjbnygtyazhqpmjtj.supabase.co',
        anonKey:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB4eWhqYm55Z3R5YXpocXBtanRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYyMjY1NDEsImV4cCI6MjA1MTgwMjU0MX0.7Ono7djTOf8d5_Vly-y7-IfhyTtizWTOZ1JqTq3xMjQ',
      );
      KakaoSdk.init(
        nativeAppKey: '9e965060e7e77d9ec0eb26977b692858',
        javaScriptAppKey: 'e9db05d0ecacff0a9df68bd45ea3b0bc',
      );
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
    return MaterialApp.router(
      routerConfig: router,
      title: '알파GOING',
      debugShowCheckedModeBanner: false,
      theme: kAppTheme,
      scrollBehavior: const ScrollBehavior().copyWith(
        dragDevices: PointerDeviceKind.values.toSet(),
      ),
      builder: (context, child) {
        return Overlay(initialEntries: [
          if (child != null) ...[
            OverlayEntry(
              builder: (context) => Scaffold(
                body: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: constraints.maxWidth,
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 1300,
                            child: child,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ]);
      },
    );
  }
}
