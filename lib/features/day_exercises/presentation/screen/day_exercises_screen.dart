import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_button.dart';
import 'package:training_log/core/design_system/widgets/app_list_items.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/app_state_views.dart';
import 'package:training_log/core/design_system/widgets/riverpod_screen_body.dart';
import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/router/app_routes.dart';
import 'package:training_log/features/day_exercises/presentation/provider/day_exercises_providers.dart';

class DayExercisesScreen extends ConsumerWidget {
  const DayExercisesScreen({
    required this.dayId,
    super.key,
  });

  final int dayId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exercisesState = ref.watch(dayExercisesControllerProvider(dayId));

    return AppScaffold(
      title: context.l10n.dayExercisesTitle,
      floatingActionButton: AppGlassFab(
        icon: Icons.add_rounded,
        onPressed: () => context.push(AppRoutes.addExercise(dayId)),
      ),
      body: RiverpodScreenBody<List<TrainingExerciseEntity>>(
        asyncValue: exercisesState,
        onRetry: () => ref.read(dayExercisesControllerProvider(dayId).notifier).refresh(),
        emptyBuilder: (context) => AppEmptyStateView(
          icon: Icons.playlist_add_rounded,
          title: context.l10n.dayExercisesEmpty,
          actionLabel: context.l10n.exerciseFormTitle,
          onAction: () => context.push(AppRoutes.addExercise(dayId)),
        ),
        contentBuilder: (context, exercises) => _ReorderableExerciseList(
          dayId: dayId,
          exercises: exercises,
        ),
      ),
    );
  }
}

class _ReorderableExerciseList extends ConsumerWidget {
  const _ReorderableExerciseList({
    required this.dayId,
    required this.exercises,
  });

  final int dayId;
  final List<TrainingExerciseEntity> exercises;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReorderableListView.builder(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.size16,
        AppDimens.size16,
        AppDimens.size16,
        AppDimens.size96,
      ),
      itemCount: exercises.length,
      onReorderItem: (oldIndex, newIndex) async {
        final updated = List<TrainingExerciseEntity>.from(exercises);
        final item = updated.removeAt(oldIndex);
        updated.insert(newIndex, item);
        await ref.read(dayExercisesControllerProvider(dayId).notifier).reorder(updated);
      },
      itemBuilder: (context, index) {
        final exercise = exercises[index];
        return AppListTileCard(
          key: ValueKey(exercise.id),
          leading: Icon(
            Icons.drag_handle_rounded,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          title: exercise.exerciseName,
          subtitle: context.l10n.dayExercisesSetsCount(exercise.sets.length),
          trailing: PopupMenuButton<String>(
            icon: const Icon(Icons.more_horiz_rounded),
            onSelected: (value) async {
              final notifier = ref.read(dayExercisesControllerProvider(dayId).notifier);
              switch (value) {
                case 'edit':
                  await context.push(AppRoutes.editExercise(dayId, exercise.id));
                  await notifier.refresh();
                case 'delete':
                  await notifier.deleteExercise(exercise.id);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit',
                child: Text(context.l10n.dayExercisesEdit),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Text(context.l10n.dayExercisesDelete),
              ),
            ],
          ),
        );
      },
    );
  }
}
