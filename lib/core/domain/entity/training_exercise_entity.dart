import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/core/domain/entity/exercise_set_entity.dart';

part 'training_exercise_entity.freezed.dart';

@freezed
abstract class TrainingExerciseEntity with _$TrainingExerciseEntity {
  const factory TrainingExerciseEntity({
    required int id,
    required int dayId,
    required int exerciseId,
    required int order,
    required String exerciseName,
    @Default(<ExerciseSetEntity>[]) List<ExerciseSetEntity> sets,
  }) = _TrainingExerciseEntity;
}
