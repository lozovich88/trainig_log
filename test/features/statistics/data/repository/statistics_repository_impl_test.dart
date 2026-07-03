import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/features/statistics/data/repository/statistics_repository_impl.dart';

void main() {
  late AppDatabase database;
  late StatisticsRepositoryImpl repository;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    repository = StatisticsRepositoryImpl(WorkoutLocalDataSource(database));
  });

  tearDown(() async {
    await database.close();
  });

  test('WHEN no progress EXPECT zero overview', () async {
    // Prepare

    // Do
    final actual = await repository.getStatistics();

    // Check
    expect(actual.overview.totalWorkouts, 0);
    expect(actual.overview.totalCompletedSets, 0);
    expect(actual.overview.totalWeightLifted, 0);
  });

  test('WHEN set completed EXPECT statistics updated', () async {
    // Prepare
    final dataSource = WorkoutLocalDataSource(database);
    await dataSource.replaceTrainingDays([DateTime.tuesday]);
    final day = await dataSource.getTrainingDayByWeekday(DateTime.tuesday);
    final exerciseId = await dataSource.insertExercise('Squat');
    final trainingExerciseId = await dataSource.createTrainingExerciseWithSets(
      dayId: day!.id,
      exerciseId: exerciseId,
      sets: [(weight: 100, repetitions: 5)],
    );
    final progressId = await dataSource.getOrCreateProgressForToday(
      trainingExerciseId,
      DateTime(2026, 6, 9),
    );
    await dataSource.incrementCompletedSets(progressId);

    // Do
    final actual = await repository.getStatistics();

    // Check
    expect(actual.overview.totalWorkouts, 1);
    expect(actual.overview.totalCompletedSets, 1);
    expect(actual.overview.totalWeightLifted, 500);
  });
}
