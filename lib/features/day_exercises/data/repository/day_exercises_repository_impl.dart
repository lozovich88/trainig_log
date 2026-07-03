import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/data/mapper/workout_mapper.dart';
import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/features/day_exercises/domain/repository/day_exercises_repository.dart';

class DayExercisesRepositoryImpl implements DayExercisesRepository {
  DayExercisesRepositoryImpl(this._dataSource);

  final WorkoutLocalDataSource _dataSource;

  @override
  Future<List<TrainingExerciseEntity>> getExercisesForDay(int dayId) async {
    final rows = await _dataSource.getTrainingExercisesForDay(dayId);
    final result = <TrainingExerciseEntity>[];
    for (final row in rows) {
      final exercise = await _dataSource.getExerciseById(row.exerciseId);
      if (exercise == null) {
        continue;
      }
      final sets = await _dataSource.getSetsForTrainingExercise(row.id);
      result.add(
        WorkoutMapper.toTrainingExercise(
          row: row,
          exerciseName: exercise.name,
          sets: sets.map(WorkoutMapper.toExerciseSet).toList(),
        ),
      );
    }
    return result;
  }

  @override
  Future<void> deleteTrainingExercise(int trainingExerciseId) {
    return _dataSource.deleteTrainingExercise(trainingExerciseId);
  }

  @override
  Future<void> reorderExercises(int dayId, List<int> orderedIds) {
    return _dataSource.reorderTrainingExercises(dayId, orderedIds);
  }
}
