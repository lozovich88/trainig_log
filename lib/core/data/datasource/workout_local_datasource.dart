import 'package:drift/drift.dart';
import 'package:training_log/core/database/app_database.dart';
import 'package:training_log/core/utils/date_utils.dart';

class WorkoutLocalDataSource {
  WorkoutLocalDataSource(this._db);

  final AppDatabase _db;

  Future<bool> hasAnyTrainingDays() async {
    final count = await (_db.select(_db.trainingDays)..limit(1)).get();
    return count.isNotEmpty;
  }

  Future<List<TrainingDay>> getTrainingDays() {
    return (_db.select(_db.trainingDays)..orderBy([(t) => OrderingTerm.asc(t.weekday)])).get();
  }

  Future<TrainingDay?> getTrainingDayByWeekday(int weekday) {
    return (_db.select(_db.trainingDays)..where((t) => t.weekday.equals(weekday))).getSingleOrNull();
  }

  Future<TrainingDay?> getTrainingDayById(int id) {
    return (_db.select(_db.trainingDays)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<void> replaceTrainingDays(List<int> weekdays) async {
    await _db.transaction(() async {
      await _db.delete(_db.trainingDays).go();
      for (final weekday in weekdays) {
        await _db.into(_db.trainingDays).insert(
              TrainingDaysCompanion.insert(weekday: weekday),
            );
      }
    });
  }

  Future<List<Exercise>> getAllExercises() {
    return (_db.select(_db.exercises)..orderBy([(t) => OrderingTerm.asc(t.name)])).get();
  }

  Future<int> insertExercise(String name) {
    return _db.into(_db.exercises).insert(ExercisesCompanion.insert(name: name));
  }

  Future<List<TrainingExercise>> getTrainingExercisesForDay(int dayId) {
    return (_db.select(_db.trainingExercises)
          ..where((t) => t.dayId.equals(dayId))
          ..orderBy([(t) => OrderingTerm.asc(t.order)]))
        .get();
  }

  Future<TrainingExercise?> getTrainingExerciseById(int id) {
    return (_db.select(_db.trainingExercises)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<Exercise?> getExerciseById(int id) {
    return (_db.select(_db.exercises)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<List<ExerciseSet>> getSetsForTrainingExercise(int trainingExerciseId) {
    return (_db.select(_db.exerciseSets)
          ..where((t) => t.trainingExerciseId.equals(trainingExerciseId))
          ..orderBy([(t) => OrderingTerm.asc(t.id)]))
        .get();
  }

  Future<int> getNextOrderForDay(int dayId) async {
    final maxOrder = await (_db.selectOnly(_db.trainingExercises)
          ..addColumns([_db.trainingExercises.order.max()])
          ..where(_db.trainingExercises.dayId.equals(dayId)))
        .map((row) => row.read(_db.trainingExercises.order.max()))
        .getSingleOrNull();
    return (maxOrder ?? -1) + 1;
  }

  Future<int> createTrainingExerciseWithSets({
    required int dayId,
    required int exerciseId,
    required List<({double weight, int repetitions})> sets,
  }) async {
    return _db.transaction(() async {
      final order = await getNextOrderForDay(dayId);
      final trainingExerciseId = await _db.into(_db.trainingExercises).insert(
            TrainingExercisesCompanion.insert(
              dayId: dayId,
              exerciseId: exerciseId,
              order: order,
            ),
          );
      for (final set in sets) {
        await _db.into(_db.exerciseSets).insert(
              ExerciseSetsCompanion.insert(
                trainingExerciseId: trainingExerciseId,
                repetitions: set.repetitions,
                weight: set.weight,
              ),
            );
      }
      return trainingExerciseId;
    });
  }

  Future<void> linkExistingExerciseToDay({
    required int dayId,
    required int exerciseId,
  }) async {
    final existingSets = await (_db.select(_db.trainingExercises)
          ..where((t) => t.exerciseId.equals(exerciseId))
          ..limit(1))
        .getSingleOrNull();
    if (existingSets == null) {
      await createTrainingExerciseWithSets(
        dayId: dayId,
        exerciseId: exerciseId,
        sets: [(weight: 0, repetitions: 10)],
      );
      return;
    }
    final sourceSets = await getSetsForTrainingExercise(existingSets.id);
    await createTrainingExerciseWithSets(
      dayId: dayId,
      exerciseId: exerciseId,
      sets: sourceSets.map((s) => (weight: s.weight, repetitions: s.repetitions)).toList(),
    );
  }

  Future<void> updateTrainingExerciseWithSets({
    required int trainingExerciseId,
    required String exerciseName,
    required List<({int? id, double weight, int repetitions})> sets,
  }) async {
    await _db.transaction(() async {
      final trainingExercise = await getTrainingExerciseById(trainingExerciseId);
      if (trainingExercise == null) {
        return;
      }
      await (_db.update(_db.exercises)..where((t) => t.id.equals(trainingExercise.exerciseId)))
          .write(ExercisesCompanion(name: Value(exerciseName)));
      await (_db.delete(_db.exerciseSets)
            ..where((t) => t.trainingExerciseId.equals(trainingExerciseId)))
          .go();
      for (final set in sets) {
        await _db.into(_db.exerciseSets).insert(
              ExerciseSetsCompanion.insert(
                trainingExerciseId: trainingExerciseId,
                repetitions: set.repetitions,
                weight: set.weight,
              ),
            );
      }
    });
  }

  Future<void> deleteTrainingExercise(int trainingExerciseId) async {
    await (_db.delete(_db.trainingExercises)..where((t) => t.id.equals(trainingExerciseId)))
        .go();
  }

  Future<void> reorderTrainingExercises(int dayId, List<int> orderedIds) async {
    await _db.transaction(() async {
      for (var index = 0; index < orderedIds.length; index++) {
        await (_db.update(_db.trainingExercises)..where((t) => t.id.equals(orderedIds[index])))
            .write(TrainingExercisesCompanion(order: Value(index)));
      }
    });
  }

  Future<List<WorkoutProgressesData>> _getProgressRowsForExercise(int trainingExerciseId) {
    return (_db.select(_db.workoutProgresses)
          ..where((t) => t.trainingExerciseId.equals(trainingExerciseId))
          ..orderBy([(t) => OrderingTerm.asc(t.id)]))
        .get();
  }

  Future<List<WorkoutProgressesData>> _getProgressForDay(
    int trainingExerciseId,
    DateTime date,
  ) async {
    final rows = await _getProgressRowsForExercise(trainingExerciseId);
    return rows.where((row) => DateUtils.isSameDay(row.date, date)).toList();
  }

  Future<void> _deduplicateProgressForExercise(int trainingExerciseId) async {
    final rows = await _getProgressRowsForExercise(trainingExerciseId);
    final grouped = <String, List<WorkoutProgressesData>>{};
    for (final row in rows) {
      final key = _dayKey(row.date);
      grouped.putIfAbsent(key, () => []).add(row);
    }
    for (final group in grouped.values) {
      if (group.length <= 1) {
        continue;
      }
      group.sort((a, b) {
        final setsCompare = b.completedSets.compareTo(a.completedSets);
        if (setsCompare != 0) {
          return setsCompare;
        }
        return a.id.compareTo(b.id);
      });
      for (final duplicate in group.skip(1)) {
        await (_db.delete(_db.workoutProgresses)..where((t) => t.id.equals(duplicate.id))).go();
      }
    }
  }

  String _dayKey(DateTime date) {
    final local = date.toLocal();
    return '${local.year}-${local.month}-${local.day}';
  }

  Future<WorkoutProgressesData?> getProgressForToday(int trainingExerciseId, DateTime date) async {
    await _deduplicateProgressForExercise(trainingExerciseId);
    final rows = await _getProgressForDay(trainingExerciseId, date);
    if (rows.isEmpty) {
      return null;
    }
    return rows.first;
  }

  Future<int> getOrCreateProgressForToday(int trainingExerciseId, DateTime date) async {
    await _deduplicateProgressForExercise(trainingExerciseId);
    final rows = await _getProgressForDay(trainingExerciseId, date);
    if (rows.isNotEmpty) {
      return rows.first.id;
    }
    return _db.into(_db.workoutProgresses).insert(
          WorkoutProgressesCompanion.insert(
            date: DateUtils.normalize(date),
            trainingExerciseId: trainingExerciseId,
          ),
        );
  }

  Future<void> incrementCompletedSets(int progressId) async {
    final progress = await (_db.select(_db.workoutProgresses)
          ..where((t) => t.id.equals(progressId)))
        .getSingleOrNull();
    if (progress == null) {
      return;
    }
    await (_db.update(_db.workoutProgresses)..where((t) => t.id.equals(progressId))).write(
          WorkoutProgressesCompanion(completedSets: Value(progress.completedSets + 1)),
        );
  }

  Future<List<WorkoutProgressesData>> getAllProgress() {
    return _db.select(_db.workoutProgresses).get();
  }

  Future<List<WorkoutProgressesData>> getProgressForDateRange(DateTime start, DateTime end) {
    return (_db.select(_db.workoutProgresses)
          ..where(
            (t) => t.date.isBiggerOrEqualValue(start) & t.date.isSmallerThanValue(end),
          ))
        .get();
  }
}
