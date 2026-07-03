import 'package:training_log/core/domain/entity/exercise_entity.dart';
import 'package:training_log/core/domain/entity/training_exercise_entity.dart';

abstract interface class ExerciseFormRepository {
  Future<List<ExerciseEntity>> getAllExercises();

  Future<TrainingExerciseEntity?> getTrainingExercise(int trainingExerciseId);

  Future<void> createExercise({
    required int dayId,
    required String name,
    required List<({double weight, int repetitions})> sets,
  });

  Future<void> linkExistingExercise({
    required int dayId,
    required int exerciseId,
  });

  Future<void> updateExercise({
    required int trainingExerciseId,
    required String name,
    required List<({double weight, int repetitions})> sets,
  });
}
