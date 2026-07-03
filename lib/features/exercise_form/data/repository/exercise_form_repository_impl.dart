import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/data/mapper/workout_mapper.dart';
import 'package:training_log/core/domain/entity/exercise_entity.dart';
import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/features/exercise_form/domain/repository/exercise_form_repository.dart';

class ExerciseFormRepositoryImpl implements ExerciseFormRepository {
  ExerciseFormRepositoryImpl(this._dataSource);

  final WorkoutLocalDataSource _dataSource;

  @override
  Future<List<ExerciseEntity>> getAllExercises() async {
    final rows = await _dataSource.getAllExercises();
    return rows.map(WorkoutMapper.toExercise).toList();
  }

  @override
  Future<TrainingExerciseEntity?> getTrainingExercise(int trainingExerciseId) async {
    final row = await _dataSource.getTrainingExerciseById(trainingExerciseId);
    if (row == null) {
      return null;
    }
    final exercise = await _dataSource.getExerciseById(row.exerciseId);
    if (exercise == null) {
      return null;
    }
    final sets = await _dataSource.getSetsForTrainingExercise(trainingExerciseId);
    return WorkoutMapper.toTrainingExercise(
      row: row,
      exerciseName: exercise.name,
      sets: sets.map(WorkoutMapper.toExerciseSet).toList(),
    );
  }

  @override
  Future<void> createExercise({
    required int dayId,
    required String name,
    required List<({double weight, int repetitions})> sets,
  }) async {
    final exerciseId = await _dataSource.insertExercise(name);
    await _dataSource.createTrainingExerciseWithSets(
      dayId: dayId,
      exerciseId: exerciseId,
      sets: sets,
    );
  }

  @override
  Future<void> linkExistingExercise({
    required int dayId,
    required int exerciseId,
  }) {
    return _dataSource.linkExistingExerciseToDay(dayId: dayId, exerciseId: exerciseId);
  }

  @override
  Future<void> updateExercise({
    required int trainingExerciseId,
    required String name,
    required List<({double weight, int repetitions})> sets,
  }) {
    return _dataSource.updateTrainingExerciseWithSets(
      trainingExerciseId: trainingExerciseId,
      exerciseName: name,
      sets: sets.map((set) => (id: null, weight: set.weight, repetitions: set.repetitions)).toList(),
    );
  }
}
