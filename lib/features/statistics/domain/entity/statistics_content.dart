import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/features/statistics/domain/entity/activity_point.dart';
import 'package:training_log/features/statistics/domain/entity/personal_record_item.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_overview.dart';
import 'package:training_log/features/statistics/domain/entity/top_exercise_item.dart';

part 'statistics_content.freezed.dart';

@freezed
abstract class StatisticsContent with _$StatisticsContent {
  const factory StatisticsContent({
    required StatisticsOverview overview,
    required List<ActivityPoint> activity,
    required List<TopExerciseItem> topExercises,
    required List<PersonalRecordItem> personalRecords,
    required Set<DateTime> workoutDates,
  }) = _StatisticsContent;
}
