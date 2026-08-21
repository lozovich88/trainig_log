import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_button.dart';
import 'package:training_log/core/design_system/widgets/app_card.dart';
import 'package:training_log/core/design_system/widgets/app_navigation.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/app_typography.dart';
import 'package:training_log/core/domain/entity/exercise_entity.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/features/exercise_form/domain/entity/exercise_form_data.dart';
import 'package:training_log/features/exercise_form/domain/entity/set_input.dart';
import 'package:training_log/features/day_exercises/presentation/provider/day_exercises_providers.dart';
import 'package:training_log/core/monitoring/monitoring_providers.dart';
import 'package:training_log/features/exercise_form/presentation/provider/exercise_form_providers.dart';

class ExerciseFormScreen extends HookConsumerWidget {
  const ExerciseFormScreen({
    required this.dayId,
    this.trainingExerciseId,
    super.key,
  });

  final int dayId;
  final int? trainingExerciseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEdit = trainingExerciseId != null;
    final formData = useState(const ExerciseFormData());
    final isLoading = useState(isEdit);
    final errorText = useState<String?>(null);
    final nameController = useTextEditingController();
    final focusRepsSetIndex = useState<int?>(null);
    final clearRepsFocus = useMemoized(() => () => focusRepsSetIndex.value = null, const []);

    useEffect(() {
      if (!isEdit) {
        return null;
      }
      Future<void>(() async {
        final exercise = await ref
            .read(getExerciseForEditUseCaseProvider)
            .call(trainingExerciseId!);
        if (exercise == null) {
          isLoading.value = false;
          return;
        }
        nameController.text = exercise.exerciseName;
        formData.value = ExerciseFormData(
          name: exercise.exerciseName,
          sets: exercise.sets
              .map(
                (set) => SetInput(
                  id: set.id,
                  weightText: _formatNumber(set.weight),
                  repsText: set.repetitions.toString(),
                ),
              )
              .toList(),
        );
        isLoading.value = false;
      });
      return null;
    }, [trainingExerciseId]);

    if (isLoading.value) {
      return AppScaffold(
        title: isEdit ? context.l10n.exerciseFormEditTitle : context.l10n.exerciseFormTitle,
        body: const AppLoadingView(),
      );
    }

    return AppScaffold(
      title: isEdit ? context.l10n.exerciseFormEditTitle : context.l10n.exerciseFormTitle,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(
          AppDimens.size16,
          AppDimens.size16,
          AppDimens.size16,
          AppDimens.size32,
        ),
        children: [
          if (!isEdit)
            AppSecondaryButton(
              icon: Icons.list_alt_outlined,
              label: context.l10n.exerciseFormSelectExisting,
              onPressed: () => _selectExisting(context, ref, dayId),
            ),
          if (!isEdit) const SizedBox(height: AppDimens.size16),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: context.l10n.exerciseFormName,
              hintText: context.l10n.exerciseFormNameHint,
            ),
            onChanged: (value) {
              formData.value = formData.value.copyWith(name: value);
            },
          ),
          const SizedBox(height: AppDimens.size24),
          Text(
            context.l10n.exerciseFormSets,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: AppDimens.size8),
          ...List.generate(formData.value.sets.length, (index) {
            return _SetInputCard(
              key: ValueKey('set-$index'),
              index: index,
              set: formData.value.sets[index],
              canRemove: formData.value.sets.length > 1,
              requestRepsFocus: focusRepsSetIndex.value == index,
              onRepsFocused: clearRepsFocus,
              onChanged: (updated) {
                final sets = List<SetInput>.from(formData.value.sets);
                sets[index] = updated;
                formData.value = formData.value.copyWith(sets: sets);
              },
              onRemove: () {
                final sets = List<SetInput>.from(formData.value.sets)..removeAt(index);
                formData.value = formData.value.copyWith(sets: sets);
              },
            );
          }),
          const SizedBox(height: AppDimens.size8),
          AppSecondaryButton(
            icon: Icons.add_rounded,
            label: context.l10n.exerciseFormAddSet,
            onPressed: () {
              final newIndex = formData.value.sets.length;
              focusRepsSetIndex.value = newIndex;
              formData.value = formData.value.copyWith(
                sets: [...formData.value.sets, const SetInput()],
              );
            },
          ),
          if (errorText.value != null) ...[
            const SizedBox(height: AppDimens.size16),
            AppErrorText(message: errorText.value!),
          ],
          const SizedBox(height: AppDimens.size24),
          AppPrimaryButton(
            label: context.l10n.exerciseFormSave,
            onPressed: () async {
              final data = formData.value.copyWith(name: nameController.text);
              final validationError = _validate(context, data);
              if (validationError != null) {
                errorText.value = validationError;
                return;
              }
              final sets = data.sets
                  .map(
                    (set) => (
                      weight: double.parse(set.weightText.replaceAll(',', '.')),
                      repetitions: int.parse(set.repsText),
                    ),
                  )
                  .toList();
              final saveUseCase = ref.read(saveExerciseUseCaseProvider);
              if (isEdit) {
                await saveUseCase.update(
                  trainingExerciseId: trainingExerciseId!,
                  name: data.name.trim(),
                  sets: sets,
                );
              } else {
                await saveUseCase.create(
                  dayId: dayId,
                  name: data.name.trim(),
                  sets: sets,
                );
              }
              ref.invalidate(dayExercisesControllerProvider(dayId));
              await ref.read(appAnalyticsProvider).logExerciseSaved(
                    dayId: dayId,
                    isEdit: isEdit,
                  );
              if (context.mounted) {
                context.pop();
              }
            },
          ),
        ],
      ),
    );
  }

  String? _validate(BuildContext context, ExerciseFormData data) {
    if (data.name.trim().isEmpty) {
      return context.l10n.exerciseFormValidationName;
    }
    if (data.sets.isEmpty) {
      return context.l10n.exerciseFormValidationSets;
    }
    for (final set in data.sets) {
      final weight = double.tryParse(set.weightText.replaceAll(',', '.'));
      final reps = int.tryParse(set.repsText);
      if (weight == null || reps == null || reps <= 0) {
        return context.l10n.exerciseFormValidationSets;
      }
    }
    return null;
  }

  Future<void> _selectExisting(BuildContext context, WidgetRef ref, int dayId) async {
    final exercises = await ref.read(getAllExercisesUseCaseProvider).call();
    if (!context.mounted) {
      return;
    }
    final selected = await AppBottomSheet.show<ExerciseEntity>(
      context,
      builder: (context) => _ExistingExercisesSheet(exercises: exercises),
    );
    if (selected == null) {
      return;
    }
    await ref.read(saveExerciseUseCaseProvider).linkExisting(
          dayId: dayId,
          exerciseId: selected.id,
        );
    ref.invalidate(dayExercisesControllerProvider(dayId));
    if (context.mounted) {
      context.pop();
    }
  }

  String _formatNumber(double value) {
    if (value == value.roundToDouble()) {
      return value.toInt().toString();
    }
    return value.toString();
  }
}

class _SetInputCard extends HookWidget {
  const _SetInputCard({
    required this.index,
    required this.set,
    required this.canRemove,
    required this.onChanged,
    required this.onRemove,
    this.requestRepsFocus = false,
    this.onRepsFocused,
    super.key,
  });

  final int index;
  final SetInput set;
  final bool canRemove;
  final ValueChanged<SetInput> onChanged;
  final VoidCallback onRemove;
  final bool requestRepsFocus;
  final VoidCallback? onRepsFocused;

  @override
  Widget build(BuildContext context) {
    final weightController = useTextEditingController(text: set.weightText);
    final repsController = useTextEditingController(text: set.repsText);
    final repsFocusNode = useFocusNode();

    useEffect(() {
      if (weightController.text != set.weightText) {
        weightController.text = set.weightText;
      }
      if (repsController.text != set.repsText) {
        repsController.text = set.repsText;
      }
      return null;
    }, [set.weightText, set.repsText]);

    useEffect(() {
      if (!requestRepsFocus) {
        return null;
      }
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (repsFocusNode.canRequestFocus) {
          repsFocusNode.requestFocus();
          onRepsFocused?.call();
        }
      });
      return null;
    }, [requestRepsFocus]);

    return AppCard(
      margin: const EdgeInsets.only(bottom: AppDimens.size8),
      padding: const EdgeInsets.all(AppDimens.size12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.exerciseFormSetNumber(index + 1),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              if (canRemove)
                IconButton(
                  onPressed: onRemove,
                  icon: const Icon(Icons.delete_outline_rounded),
                  tooltip: context.l10n.exerciseFormRemoveSet,
                ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: weightController,
                  decoration: InputDecoration(labelText: context.l10n.exerciseFormWeight),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (value) => onChanged(set.copyWith(weightText: value)),
                ),
              ),
              const SizedBox(width: AppDimens.size12),
              Expanded(
                child: TextField(
                  controller: repsController,
                  focusNode: repsFocusNode,
                  decoration: InputDecoration(labelText: context.l10n.exerciseFormReps),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => onChanged(set.copyWith(repsText: value)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ExistingExercisesSheet extends StatelessWidget {
  const _ExistingExercisesSheet({required this.exercises});

  final List<ExerciseEntity> exercises;

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: context.l10n.exerciseFormSelectExistingTitle,
      child: Flexible(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            final exercise = exercises[index];
            return ListTile(
              title: Text(exercise.name),
              onTap: () => Navigator.of(context).pop(exercise),
            );
          },
        ),
      ),
    );
  }
}
