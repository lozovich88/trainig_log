import 'package:training_log/core/domain/entity/training_exercise_entity.dart';

abstract interface class DayExercisesRepository {
  Future<List<TrainingExerciseEntity>> getExercisesForDay(int dayId);

  Future<void> deleteTrainingExercise(int trainingExerciseId);

  Future<void> reorderExercises(int dayId, List<int> orderedIds);
}
