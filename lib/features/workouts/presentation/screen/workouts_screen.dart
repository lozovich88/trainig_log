import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_button.dart';
import 'package:training_log/core/design_system/widgets/app_list_items.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/app_state_views.dart';
import 'package:training_log/core/design_system/widgets/riverpod_screen_body.dart';
import 'package:training_log/core/domain/entity/training_day_entity.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/extensions/weekday_extension.dart';
import 'package:training_log/core/router/app_routes.dart';
import 'package:training_log/core/state/ui_state.dart';
import 'package:training_log/features/workouts/presentation/provider/workouts_providers.dart';
import 'package:training_log/features/workouts/presentation/widget/select_days_sheet.dart';

class WorkoutsScreen extends ConsumerWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutsState = ref.watch(workoutsControllerProvider);

    return AppScaffold(
      title: context.l10n.navWorkouts,
      floatingActionButton: workoutsState.valueOrNull is UiContent<List<TrainingDayEntity>>
          ? AppGlassFab(
              icon: Icons.edit_calendar_outlined,
              onPressed: () {
                final days = (workoutsState.valueOrNull as UiContent<List<TrainingDayEntity>>).data;
                _openDaysSheet(context, ref, days.map((day) => day.weekday).toList());
              },
            )
          : null,
      body: RiverpodScreenBody<List<TrainingDayEntity>>(
        asyncValue: workoutsState,
        onRetry: () => ref.read(workoutsControllerProvider.notifier).refresh(),
        emptyBuilder: (context) => AppEmptyStateView(
          icon: Icons.calendar_month_outlined,
          title: context.l10n.workoutsEmpty,
          actionLabel: context.l10n.workoutsConfigure,
          onAction: () => _openDaysSheet(context, ref, const []),
        ),
        contentBuilder: (context, days) => _TrainingDaysList(days: days),
      ),
    );
  }

  void _openDaysSheet(BuildContext context, WidgetRef ref, List<int> selected) {
    SelectDaysSheet.show(
      context,
      initialSelected: selected,
      onSave: (weekdays) {
        ref.read(workoutsControllerProvider.notifier).saveDays(weekdays);
      },
    );
  }
}

class _TrainingDaysList extends StatelessWidget {
  const _TrainingDaysList({required this.days});

  final List<TrainingDayEntity> days;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.size16,
        AppDimens.size16,
        AppDimens.size16,
        AppDimens.size96,
      ),
      itemCount: days.length,
      separatorBuilder: (_, __) => const SizedBox(height: AppDimens.size8),
      itemBuilder: (context, index) {
        final day = days[index];
        return AppListTileCard(
          leading: Icon(
            Icons.fitness_center,
            color: Theme.of(context).colorScheme.primary,
          ),
          title: day.weekday.localizedName(context),
          onTap: () => context.push(AppRoutes.dayExercises(day.id)),
        );
      },
    );
  }
}
