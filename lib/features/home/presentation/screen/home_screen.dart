import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_card.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/app_state_views.dart';
import 'package:training_log/core/design_system/widgets/riverpod_screen_body.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/router/app_routes.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/entity/today_exercise_item.dart';
import 'package:training_log/features/home/presentation/provider/home_providers.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeControllerProvider);

    return AppScaffold(
      title: context.l10n.navHome,
      body: RiverpodScreenBody<HomeContent>(
        asyncValue: homeState,
        onRetry: () => ref.read(homeControllerProvider.notifier).refresh(),
        contentBuilder: (context, content) {
          if (content is HomeNoPlan) {
            return AppEmptyStateView(
              icon: Icons.fitness_center_outlined,
              title: context.l10n.homeNoPlanTitle,
              actionLabel: context.l10n.homeNoPlanAction,
              onAction: () => context.go(AppRoutes.workouts),
            );
          }
          if (content is HomeRestDay) {
            return AppEmptyStateView(
              icon: Icons.self_improvement_outlined,
              title: context.l10n.homeRestDay,
            );
          }
          if (content is HomeWorkout) {
            return _WorkoutView(
              liftedWeightToday: content.liftedWeightToday,
              exercises: content.exercises,
              onCompleteSet: (progressId) {
                ref.read(homeControllerProvider.notifier).completeSet(progressId);
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _WorkoutView extends HookWidget {
  const _WorkoutView({
    required this.liftedWeightToday,
    required this.exercises,
    required this.onCompleteSet,
  });

  final int liftedWeightToday;
  final List<TodayExerciseItem> exercises;
  final ValueChanged<int> onCompleteSet;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimens.size16),
          child: AppCard(
            child: Text(
              context.l10n.homeWeightLiftedToday(liftedWeightToday),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Expanded(
          child: exercises.isEmpty
              ? const SizedBox.shrink()
              : ListView.separated(
                  padding: const EdgeInsets.fromLTRB(
                    AppDimens.size16,
                    0,
                    AppDimens.size16,
                    AppDimens.size96,
                  ),
                  itemCount: exercises.length,
                  separatorBuilder: (_, __) => const SizedBox(height: AppDimens.size8),
                  itemBuilder: (context, index) {
                    final item = exercises[index];
                    return _ExerciseCard(
                      item: item,
                      onTap: () => onCompleteSet(item.progressId),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

class _ExerciseCard extends StatelessWidget {
  const _ExerciseCard({
    required this.item,
    required this.onTap,
  });

  final TodayExerciseItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.exerciseName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: AppDimens.size8),
          Text(
            context.l10n.homeSetProgress(item.currentSetNumber, item.totalSets),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppDimens.size4),
          Text(
            context.l10n.homeSetDetails(
              _formatWeight(item.currentWeight),
              item.currentRepetitions,
            ),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  String _formatWeight(double weight) {
    if (weight == weight.roundToDouble()) {
      return weight.toInt().toString();
    }
    return weight.toString();
  }
}
