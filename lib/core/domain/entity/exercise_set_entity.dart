import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_set_entity.freezed.dart';

@freezed
abstract class ExerciseSetEntity with _$ExerciseSetEntity {
  const factory ExerciseSetEntity({
    required int id,
    required int trainingExerciseId,
    required int repetitions,
    required double weight,
  }) = _ExerciseSetEntity;
}
