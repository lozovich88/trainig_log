import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/monitoring/monitoring_providers.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/main_shell.dart';
import 'package:training_log/core/router/app_routes.dart';
import 'package:training_log/features/day_exercises/presentation/screen/day_exercises_screen.dart';
import 'package:training_log/features/exercise_form/presentation/screen/exercise_form_screen.dart';
import 'package:training_log/features/home/presentation/screen/home_screen.dart';
import 'package:training_log/features/statistics/presentation/screen/statistics_screen.dart';
import 'package:training_log/features/workouts/presentation/screen/workouts_screen.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.home,
    observers: ref.watch(analyticsObserversProvider),
    errorBuilder: (context, state) {
      return AppScaffold(
        title: 'Navigation error',
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: SelectableText(state.error?.toString() ?? 'Unknown routing error'),
          ),
        ),
      );
    },
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => MainShell(location: state.uri.toString(), child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            pageBuilder: (context, state) => const NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            path: AppRoutes.workouts,
            pageBuilder: (context, state) => const NoTransitionPage(child: WorkoutsScreen()),
            routes: [
              GoRoute(
                path: 'day/:dayId',
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) {
                  final dayId = int.parse(state.pathParameters['dayId']!);
                  return DayExercisesScreen(dayId: dayId);
                },
                routes: [
                  GoRoute(
                    path: 'add',
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final dayId = int.parse(state.pathParameters['dayId']!);
                      return ExerciseFormScreen(dayId: dayId);
                    },
                  ),
                  GoRoute(
                    path: 'edit/:trainingExerciseId',
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final dayId = int.parse(state.pathParameters['dayId']!);
                      final trainingExerciseId =
                          int.parse(state.pathParameters['trainingExerciseId']!);
                      return ExerciseFormScreen(
                        dayId: dayId,
                        trainingExerciseId: trainingExerciseId,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: AppRoutes.statistics,
            pageBuilder: (context, state) => const NoTransitionPage(child: StatisticsScreen()),
          ),
        ],
      ),
    ],
  );
}
