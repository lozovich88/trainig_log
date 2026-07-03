import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/features/home/data/repository/home_repository_impl.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';

void main() {
  late AppDatabase database;
  late HomeRepositoryImpl repository;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    repository = HomeRepositoryImpl(WorkoutLocalDataSource(database));
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
    final today = DateTime(2026, 6, 10); // Wednesday

    // Do
    final actual = await repository.getHomeContent(today);

    // Check
    expect(actual, const HomeContent.restDay());
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
    final today = DateTime(2026, 6, 9); // Tuesday
    final before = await repository.getHomeContent(today);
    final workout = before as HomeWorkout;

    // Do
    await repository.completeSet(workout.exercises.first.progressId);
    final actual = await repository.getHomeContent(today);

    // Check
    expect(actual, const HomeContent.workout(liftedWeightToday: 600, exercises: []));
  });
}
