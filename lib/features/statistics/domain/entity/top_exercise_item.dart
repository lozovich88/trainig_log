import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_exercise_item.freezed.dart';

@freezed
abstract class TopExerciseItem with _$TopExerciseItem {
  const factory TopExerciseItem({
    required String name,
    required int completionCount,
  }) = _TopExerciseItem;
}
