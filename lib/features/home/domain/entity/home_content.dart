import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/features/home/domain/entity/home_calendar_day.dart';
import 'package:training_log/features/home/domain/entity/today_exercise_item.dart';

part 'home_content.freezed.dart';

enum HomeViewType { noPlan, restDay, workout }

@freezed
abstract class HomeContent with _$HomeContent {
  const factory HomeContent.noPlan() = HomeNoPlan;

  const factory HomeContent.restDay({
    required DateTime selectedDate,
    required List<HomeCalendarDay> calendarDays,
  }) = HomeRestDay;

  const factory HomeContent.workout({
    required DateTime selectedDate,
    required List<HomeCalendarDay> calendarDays,
    required int liftedWeight,
    required List<TodayExerciseItem> exercises,
  }) = HomeWorkout;
}
