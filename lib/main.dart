import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training_log/app.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/monitoring/app_crashlytics.dart';
import 'package:training_log/core/monitoring/firebase_bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseBootstrap.initialize();

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    AppCrashlytics.recordFlutterError(details);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    AppCrashlytics.recordError(error, stack, fatal: true);
    return true;
  };

  ErrorWidget.builder = (details) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.size16),
          child: Text(
            details.exceptionAsString(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  };

  runZonedGuarded(
    () {
      runApp(
        const ProviderScope(
          child: GymWorkoutDiaryApp(),
        ),
      );
    },
    (error, stack) {
      AppCrashlytics.recordError(error, stack, fatal: true);
      runApp(_StartupErrorApp(error: error, stack: stack));
    },
  );
}

class _StartupErrorApp extends StatelessWidget {
  const _StartupErrorApp({
    required this.error,
    required this.stack,
  });

  final Object error;
  final StackTrace stack;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppScaffold(
        title: 'Startup error',
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppDimens.size16),
            child: SelectableText(
              '$error\n\n$stack',
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
