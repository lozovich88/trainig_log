import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/core/providers/datasource_provider.dart';
import 'package:training_log/core/state/ui_state.dart';
import 'package:training_log/features/day_exercises/data/repository/day_exercises_repository_impl.dart';
import 'package:training_log/features/day_exercises/domain/repository/day_exercises_repository.dart';
import 'package:training_log/features/day_exercises/domain/usecase/delete_day_exercise_usecase.dart';
import 'package:training_log/features/day_exercises/domain/usecase/get_day_exercises_usecase.dart';
import 'package:training_log/features/day_exercises/domain/usecase/reorder_day_exercises_usecase.dart';

part 'day_exercises_providers.g.dart';

final dayExercisesRepositoryProvider = Provider<DayExercisesRepository>((ref) {
  return DayExercisesRepositoryImpl(ref.watch(workoutLocalDataSourceProvider));
});

@riverpod
class DayExercisesController extends _$DayExercisesController {
  late final GetDayExercisesUseCase _getDayExercises;
  late final DeleteDayExerciseUseCase _deleteDayExercise;
  late final ReorderDayExercisesUseCase _reorderDayExercises;

  @override
  Future<UiState<List<TrainingExerciseEntity>>> build(int dayId) async {
    _getDayExercises = GetDayExercisesUseCase(ref.watch(dayExercisesRepositoryProvider));
    _deleteDayExercise = DeleteDayExerciseUseCase(ref.watch(dayExercisesRepositoryProvider));
    _reorderDayExercises = ReorderDayExercisesUseCase(ref.watch(dayExercisesRepositoryProvider));
    return _load(dayId);
  }

  Future<UiState<List<TrainingExerciseEntity>>> _load(int dayId) async {
    try {
      final exercises = await _getDayExercises(dayId);
      if (exercises.isEmpty) {
        return const UiState.empty();
      }
      return UiState.content(exercises);
    } catch (error) {
      return UiState.error(error.toString());
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await _load(dayId));
  }

  Future<void> deleteExercise(int trainingExerciseId) async {
    await _deleteDayExercise(trainingExerciseId);
    await refresh();
  }

  Future<void> reorder(List<TrainingExerciseEntity> exercises) async {
    final orderedIds = exercises.map((exercise) => exercise.id).toList();
    await _reorderDayExercises(dayId, orderedIds);
    await refresh();
  }
}
