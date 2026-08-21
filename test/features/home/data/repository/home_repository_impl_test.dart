import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/core/utils/date_utils.dart';
import 'package:training_log/features/home/data/repository/home_repository_impl.dart';
import 'package:training_log/features/home/domain/entity/home_calendar_day.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';

void main() {
  late AppDatabase database;
  late HomeRepositoryImpl repository;
  final referenceNow = DateTime(2026, 6, 10);

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    repository = HomeRepositoryImpl(
      WorkoutLocalDataSource(database),
      now: () => referenceNow,
    );
  });

  tearDown(() async {
    await database.close();
  });

  test('WHEN no training days EXPECT no plan state', () async {
    // Prepare
    final today = DateTime(2026, 6, 9);

    // Do
    final actual = await repository.getHomeContent(today);

    // Check
    expect(actual, const HomeContent.noPlan());
  });

  test('WHEN today is rest day EXPECT rest day state', () async {
    // Prepare
    final dataSource = WorkoutLocalDataSource(database);
    await dataSource.replaceTrainingDays([DateTime.monday]);
    final today = DateTime(2026, 6, 10);

    // Do
    final actual = await repository.getHomeContent(today);

    // Check
    expect(actual, isA<HomeRestDay>());
    final restDay = actual as HomeRestDay;
    expect(restDay.calendarDays, isNotEmpty);
  });

  test('WHEN complete set EXPECT exercise progress updated', () async {
    // Prepare
    final dataSource = WorkoutLocalDataSource(database);
    await dataSource.replaceTrainingDays([DateTime.tuesday]);
    final day = await dataSource.getTrainingDayByWeekday(DateTime.tuesday);
    final exerciseId = await dataSource.insertExercise('Bench press');
    await dataSource.createTrainingExerciseWithSets(
      dayId: day!.id,
      exerciseId: exerciseId,
      sets: [(weight: 60, repetitions: 10)],
    );
    final today = DateTime(2026, 6, 9);
    final before = await repository.getHomeContent(today);
    final workout = before as HomeWorkout;

    // Do
    await repository.completeSet(workout.exercises.first.progressId);
    final actual = await repository.getHomeContent(today);

    // Check
    expect(actual, isA<HomeWorkout>());
    final completedWorkout = actual as HomeWorkout;
    expect(completedWorkout.liftedWeight, 600);
    expect(completedWorkout.exercises, isEmpty);
    final completedDay = completedWorkout.calendarDays.firstWhere(
      (day) => DateUtils.isSameDay(day.date, today),
    );
    expect(completedDay.status, HomeCalendarDayStatus.completed);
  });

  test('WHEN missed day selected EXPECT pending exercises returned', () async {
    // Prepare
    final dataSource = WorkoutLocalDataSource(database);
    await dataSource.replaceTrainingDays([DateTime.tuesday]);
    final day = await dataSource.getTrainingDayByWeekday(DateTime.tuesday);
    final exerciseId = await dataSource.insertExercise('Squat');
    await dataSource.createTrainingExerciseWithSets(
      dayId: day!.id,
      exerciseId: exerciseId,
      sets: [(weight: 80, repetitions: 8)],
    );
    final missedDay = DateTime(2026, 6, 9);

    // Do
    final actual = await repository.getHomeContent(missedDay);

    // Check
    expect(actual, isA<HomeWorkout>());
    final workout = actual as HomeWorkout;
    expect(workout.exercises, hasLength(1));
    final calendarDay = workout.calendarDays.firstWhere(
      (item) => DateUtils.isSameDay(item.date, missedDay),
    );
    expect(calendarDay.status, HomeCalendarDayStatus.missed);
  });
}
