import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/features/home/data/repository/home_repository_impl.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';

void main() {
  late AppDatabase database;
  late WorkoutLocalDataSource dataSource;
  late HomeRepositoryImpl repository;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
    dataSource = WorkoutLocalDataSource(database);
    repository = HomeRepositoryImpl(dataSource);
  });

  tearDown(() async {
    await database.close();
  });

  test('WHEN duplicate progress rows exist EXPECT restart load succeeds', () async {
    // Prepare
    await dataSource.replaceTrainingDays([DateTime.tuesday]);
    final day = await dataSource.getTrainingDayByWeekday(DateTime.tuesday);
    final exerciseId = await dataSource.insertExercise('Bench press');
    final trainingExerciseId = await dataSource.createTrainingExerciseWithSets(
      dayId: day!.id,
      exerciseId: exerciseId,
      sets: [(weight: 60, repetitions: 10)],
    );
    final today = DateTime(2026, 6, 9);
    await database.into(database.workoutProgresses).insert(
          WorkoutProgressesCompanion.insert(
            date: DateTime(today.year, today.month, today.day),
            trainingExerciseId: trainingExerciseId,
          ),
        );
    await database.into(database.workoutProgresses).insert(
          WorkoutProgressesCompanion.insert(
            date: DateTime(today.year, today.month, today.day, 12),
            trainingExerciseId: trainingExerciseId,
          ),
        );

    // Do
    final actual = await repository.getHomeContent(today);

    // Check
    expect(actual, isA<HomeWorkout>());
    final progressRows = await dataSource.getAllProgress();
    expect(progressRows.length, 1);
  });
}
