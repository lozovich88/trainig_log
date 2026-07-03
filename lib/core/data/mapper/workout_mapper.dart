import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/core/domain/entity/exercise_entity.dart';
import 'package:training_log/core/domain/entity/exercise_set_entity.dart';
import 'package:training_log/core/domain/entity/training_day_entity.dart';
import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/core/domain/entity/workout_progress_entity.dart';

abstract final class WorkoutMapper {
  static TrainingDayEntity toTrainingDay(TrainingDay row) {
    return TrainingDayEntity(id: row.id, weekday: row.weekday);
  }

  static ExerciseEntity toExercise(Exercise row) {
    return ExerciseEntity(id: row.id, name: row.name);
  }

  static ExerciseSetEntity toExerciseSet(ExerciseSet row) {
    return ExerciseSetEntity(
      id: row.id,
      trainingExerciseId: row.trainingExerciseId,
      repetitions: row.repetitions,
      weight: row.weight,
    );
  }

  static TrainingExerciseEntity toTrainingExercise({
    required TrainingExercise row,
    required String exerciseName,
    List<ExerciseSetEntity> sets = const [],
  }) {
    return TrainingExerciseEntity(
      id: row.id,
      dayId: row.dayId,
      exerciseId: row.exerciseId,
      order: row.order,
      exerciseName: exerciseName,
      sets: sets,
    );
  }

  static WorkoutProgressEntity toWorkoutProgress(WorkoutProgressesData row) {
    return WorkoutProgressEntity(
      id: row.id,
      date: row.date,
      trainingExerciseId: row.trainingExerciseId,
      completedSets: row.completedSets,
    );
  }
}
