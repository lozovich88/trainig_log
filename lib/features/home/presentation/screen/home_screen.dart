import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_card.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/app_state_views.dart';
import 'package:training_log/core/design_system/widgets/riverpod_screen_body.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/router/app_routes.dart';
import 'package:training_log/core/utils/date_utils.dart' as app_date;
import 'package:training_log/features/home/domain/entity/home_calendar_day.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/entity/today_exercise_item.dart';
import 'package:training_log/features/home/presentation/provider/home_providers.dart';
import 'package:training_log/features/home/presentation/widget/home_calendar_row.dart';

class HomeScreen extends ConsumerWidget {
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
            return _HomeDayContent(
              selectedDate: content.selectedDate,
              calendarDays: content.calendarDays,
              onDateSelected: (date) {
                ref.read(homeControllerProvider.notifier).selectDate(date);
              },
              body: AppEmptyStateView(
                icon: Icons.self_improvement_outlined,
                title: _restDayTitle(context, content.selectedDate),
              ),
            );
          }
          if (content is HomeWorkout) {
            return _HomeDayContent(
              selectedDate: content.selectedDate,
              calendarDays: content.calendarDays,
              onDateSelected: (date) {
                ref.read(homeControllerProvider.notifier).selectDate(date);
              },
              body: _WorkoutView(
                selectedDate: content.selectedDate,
                liftedWeight: content.liftedWeight,
                exercises: content.exercises,
                onCompleteSet: (progressId) {
                  ref.read(homeControllerProvider.notifier).completeSet(progressId);
                },
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  String _restDayTitle(BuildContext context, DateTime selectedDate) {
    if (app_date.DateUtils.isSameDay(selectedDate, DateTime.now())) {
      return context.l10n.homeRestDay;
    }
    return context.l10n.homeRestDayOnDate(_formatDate(context, selectedDate));
  }

  String _formatDate(BuildContext context, DateTime date) {
    return DateFormat.yMMMd(Localizations.localeOf(context).toString()).format(date);
  }
}

class _HomeDayContent extends StatelessWidget {
  const _HomeDayContent({
    required this.selectedDate,
    required this.calendarDays,
    required this.onDateSelected,
    required this.body,
  });

  final DateTime selectedDate;
  final List<HomeCalendarDay> calendarDays;
  final ValueChanged<DateTime> onDateSelected;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomeCalendarRow(
          days: calendarDays,
          selectedDate: selectedDate,
          onDateSelected: onDateSelected,
        ),
        Expanded(child: body),
      ],
    );
  }
}

class _WorkoutView extends StatelessWidget {
  const _WorkoutView({
    required this.selectedDate,
    required this.liftedWeight,
    required this.exercises,
    required this.onCompleteSet,
  });

  final DateTime selectedDate;
  final int liftedWeight;
  final List<TodayExerciseItem> exercises;
  final ValueChanged<int> onCompleteSet;

  @override
  Widget build(BuildContext context) {
    final isToday = app_date.DateUtils.isSameDay(selectedDate, DateTime.now());
    final weightLabel = isToday
        ? context.l10n.homeWeightLiftedToday(liftedWeight)
        : context.l10n.homeWeightLiftedOnDate(
            _formatDate(context, selectedDate),
            liftedWeight,
          );

    if (exercises.isEmpty) {
      return ListView(
        padding: const EdgeInsets.fromLTRB(
          AppDimens.size16,
          AppDimens.size8,
          AppDimens.size16,
          AppDimens.size96,
        ),
        children: [
          AppCard(
            child: Text(
              weightLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: AppDimens.size16),
          AppEmptyStateView(
            icon: Icons.check_circle_outline_rounded,
            title: context.l10n.homeAllExercisesCompleted,
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppDimens.size16,
            AppDimens.size8,
            AppDimens.size16,
            0,
          ),
          child: AppCard(
            child: Text(
              weightLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(
              AppDimens.size16,
              AppDimens.size16,
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

  String _formatDate(BuildContext context, DateTime date) {
    return DateFormat.yMMMd(Localizations.localeOf(context).toString()).format(date);
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
