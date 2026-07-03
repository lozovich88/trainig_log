import 'package:drift/drift.dart';

class TrainingDays extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get weekday => integer()();
}

class Exercises extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();
}

class TrainingExercises extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get dayId => integer().references(TrainingDays, #id, onDelete: KeyAction.cascade)();

  IntColumn get exerciseId => integer().references(Exercises, #id, onDelete: KeyAction.cascade)();

  IntColumn get order => integer()();
}

class ExerciseSets extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get trainingExerciseId =>
      integer().references(TrainingExercises, #id, onDelete: KeyAction.cascade)();

  IntColumn get repetitions => integer()();

  RealColumn get weight => real()();
}

class WorkoutProgresses extends Table {
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get date => dateTime()();

  IntColumn get trainingExerciseId =>
      integer().references(TrainingExercises, #id, onDelete: KeyAction.cascade)();

  IntColumn get completedSets => integer().withDefault(const Constant(0))();
}
