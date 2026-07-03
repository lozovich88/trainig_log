import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_overview.freezed.dart';

@freezed
abstract class StatisticsOverview with _$StatisticsOverview {
  const factory StatisticsOverview({
    required int totalWorkouts,
    required int totalCompletedSets,
    required int totalWeightLifted,
    required double averageWeightPerWorkout,
  }) = _StatisticsOverview;
}
