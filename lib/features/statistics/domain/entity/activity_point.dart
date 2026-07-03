import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_point.freezed.dart';

@freezed
abstract class ActivityPoint with _$ActivityPoint {
  const factory ActivityPoint({
    required DateTime date,
    required int completedSets,
  }) = _ActivityPoint;
}
