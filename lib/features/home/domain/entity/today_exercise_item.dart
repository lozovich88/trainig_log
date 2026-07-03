import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_exercise_item.freezed.dart';

@freezed
abstract class TodayExerciseItem with _$TodayExerciseItem {
  const factory TodayExerciseItem({
    required int progressId,
    required int trainingExerciseId,
    required String exerciseName,
    required int currentSetNumber,
    required int totalSets,
    required double currentWeight,
    required int currentRepetitions,
    required int completedSets,
  }) = _TodayExerciseItem;
}
