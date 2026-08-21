import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/utils/date_utils.dart';
import 'package:training_log/features/home/domain/entity/home_calendar_day.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/entity/today_exercise_item.dart';
import 'package:training_log/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(
    this._dataSource, {
    DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final WorkoutLocalDataSource _dataSource;
  final DateTime Function() _now;

  static const int _calendarDaysCount = 28;

  @override
  Future<HomeContent> getHomeContent(DateTime selectedDate) async {
    final normalizedSelectedDate = DateUtils.normalize(selectedDate);
    final hasDays = await _dataSource.hasAnyTrainingDays();
    if (!hasDays) {
      return const HomeContent.noPlan();
    }

    final calendarDays = await _buildCalendarDays(normalizedSelectedDate);
    final todayDay = await _dataSource.getTrainingDayByWeekday(normalizedSelectedDate.weekday);
    if (todayDay == null) {
      return HomeContent.restDay(
        selectedDate: normalizedSelectedDate,
        calendarDays: calendarDays,
      );
    }

    final trainingExercises = await _dataSource.getTrainingExercisesForDay(todayDay.id);
    if (trainingExercises.isEmpty) {
      return HomeContent.restDay(
        selectedDate: normalizedSelectedDate,
        calendarDays: calendarDays,
      );
    }

    final items = <TodayExerciseItem>[];
    var liftedWeight = 0;

    for (final trainingExercise in trainingExercises) {
      final exercise = await _dataSource.getExerciseById(trainingExercise.exerciseId);
      if (exercise == null) {
        continue;
      }
      final sets = await _dataSource.getSetsForTrainingExercise(trainingExercise.id);
      if (sets.isEmpty) {
        continue;
      }

      final progressId =
          await _dataSource.getOrCreateProgressForToday(trainingExercise.id, normalizedSelectedDate);
      final progress =
          await _dataSource.getProgressForToday(trainingExercise.id, normalizedSelectedDate);
      final completedSets = progress?.completedSets ?? 0;

      for (var index = 0; index < completedSets && index < sets.length; index++) {
        liftedWeight += (sets[index].repetitions * sets[index].weight).round();
      }

      if (completedSets >= sets.length) {
        continue;
      }

      final currentSet = sets[completedSets];
      items.add(
        TodayExerciseItem(
          progressId: progressId,
          trainingExerciseId: trainingExercise.id,
          exerciseName: exercise.name,
          currentSetNumber: completedSets + 1,
          totalSets: sets.length,
          currentWeight: currentSet.weight,
          currentRepetitions: currentSet.repetitions,
          completedSets: completedSets,
        ),
      );
    }

    return HomeContent.workout(
      selectedDate: normalizedSelectedDate,
      calendarDays: calendarDays,
      liftedWeight: liftedWeight,
      exercises: items,
    );
  }

  @override
  Future<void> completeSet(int progressId) {
    return _dataSource.incrementCompletedSets(progressId);
  }

  Future<List<HomeCalendarDay>> _buildCalendarDays(DateTime selectedDate) async {
    final today = DateUtils.normalize(_now());
    final start = today.subtract(const Duration(days: _calendarDaysCount - 1));
    final days = <HomeCalendarDay>[];

    for (var index = 0; index < _calendarDaysCount; index++) {
      final date = DateUtils.normalize(start.add(Duration(days: index)));
      if (date.isAfter(today)) {
        break;
      }
      final status = await _getDayStatus(date);
      days.add(
        HomeCalendarDay(
          date: date,
          status: status,
        ),
      );
    }

    return days;
  }

  Future<HomeCalendarDayStatus> _getDayStatus(DateTime date) async {
    final trainingDay = await _dataSource.getTrainingDayByWeekday(date.weekday);
    if (trainingDay == null) {
      return HomeCalendarDayStatus.rest;
    }

    final trainingExercises = await _dataSource.getTrainingExercisesForDay(trainingDay.id);
    if (trainingExercises.isEmpty) {
      return HomeCalendarDayStatus.rest;
    }

    var hasConfiguredSets = false;
    var allCompleted = true;

    for (final trainingExercise in trainingExercises) {
      final sets = await _dataSource.getSetsForTrainingExercise(trainingExercise.id);
      if (sets.isEmpty) {
        continue;
      }
      hasConfiguredSets = true;
      final progress = await _dataSource.getProgressForToday(trainingExercise.id, date);
      final completedSets = progress?.completedSets ?? 0;
      if (completedSets < sets.length) {
        allCompleted = false;
      }
    }

    if (!hasConfiguredSets) {
      return HomeCalendarDayStatus.rest;
    }
    if (allCompleted) {
      return HomeCalendarDayStatus.completed;
    }

    final normalizedDate = DateUtils.normalize(date);
    final today = DateUtils.normalize(_now());
    if (normalizedDate.isBefore(today)) {
      return HomeCalendarDayStatus.missed;
    }
    return HomeCalendarDayStatus.pending;
  }
}
