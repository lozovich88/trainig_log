import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_progress_entity.freezed.dart';

@freezed
abstract class WorkoutProgressEntity with _$WorkoutProgressEntity {
  const factory WorkoutProgressEntity({
    required int id,
    required DateTime date,
    required int trainingExerciseId,
    required int completedSets,
  }) = _WorkoutProgressEntity;
}
