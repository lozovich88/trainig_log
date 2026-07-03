import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:training_log/core/database/tables.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    TrainingDays,
    Exercises,
    TrainingExercises,
    ExerciseSets,
    WorkoutProgresses,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'gym_workout_diary');
  }
}
