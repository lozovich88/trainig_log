import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/utils/date_utils.dart';
import 'package:training_log/features/statistics/domain/entity/activity_point.dart';
import 'package:training_log/features/statistics/domain/entity/personal_record_item.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_content.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_overview.dart';
import 'package:training_log/features/statistics/domain/entity/top_exercise_item.dart';
import 'package:training_log/features/statistics/domain/repository/statistics_repository.dart';

class StatisticsRepositoryImpl implements StatisticsRepository {
  StatisticsRepositoryImpl(this._dataSource);

  final WorkoutLocalDataSource _dataSource;

  @override
  Future<StatisticsContent> getStatistics() async {
    final allProgress = await _dataSource.getAllProgress();
    final workoutDates = <DateTime>{};
    final activityMap = <DateTime, int>{};
    var totalCompletedSets = 0;
    var totalWeightLifted = 0.0;
    final exerciseCompletionCount = <String, int>{};
    final personalRecords = <String, ({double maxWeight, double maxVolume})>{};

    for (final progress in allProgress) {
      if (progress.completedSets <= 0) {
        continue;
      }

      final dateKey = DateUtils.normalize(progress.date);
      workoutDates.add(dateKey);
      activityMap[dateKey] = (activityMap[dateKey] ?? 0) + progress.completedSets;
      totalCompletedSets += progress.completedSets;

      final trainingExercise = await _dataSource.getTrainingExerciseById(progress.trainingExerciseId);
      if (trainingExercise == null) {
        continue;
      }
      final exercise = await _dataSource.getExerciseById(trainingExercise.exerciseId);
      if (exercise == null) {
        continue;
      }
      final sets = await _dataSource.getSetsForTrainingExercise(progress.trainingExerciseId);

      for (var index = 0; index < progress.completedSets && index < sets.length; index++) {
        final set = sets[index];
        final volume = set.weight * set.repetitions;
        totalWeightLifted += volume;

        final currentRecord = personalRecords[exercise.name];
        final maxWeight = currentRecord == null
            ? set.weight
            : (set.weight > currentRecord.maxWeight ? set.weight : currentRecord.maxWeight);
        final maxVolume = currentRecord == null
            ? volume
            : (volume > currentRecord.maxVolume ? volume : currentRecord.maxVolume);
        personalRecords[exercise.name] = (maxWeight: maxWeight, maxVolume: maxVolume);
      }

      if (progress.completedSets >= sets.length && sets.isNotEmpty) {
        exerciseCompletionCount[exercise.name] = (exerciseCompletionCount[exercise.name] ?? 0) + 1;
      }
    }

    final totalWorkouts = workoutDates.length;
    final averageWeight = totalWorkouts == 0 ? 0.0 : totalWeightLifted / totalWorkouts;

    final activity = activityMap.entries
        .map((entry) => ActivityPoint(date: entry.key, completedSets: entry.value))
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));

    final topExercises = exerciseCompletionCount.entries
        .map((entry) => TopExerciseItem(name: entry.key, completionCount: entry.value))
        .toList()
      ..sort((a, b) => b.completionCount.compareTo(a.completionCount));

    final records = personalRecords.entries
        .map(
          (entry) => PersonalRecordItem(
            exerciseName: entry.key,
            maxWeight: entry.value.maxWeight,
            maxVolume: entry.value.maxVolume,
          ),
        )
        .toList()
      ..sort((a, b) => a.exerciseName.compareTo(b.exerciseName));

    return StatisticsContent(
      overview: StatisticsOverview(
        totalWorkouts: totalWorkouts,
        totalCompletedSets: totalCompletedSets,
        totalWeightLifted: totalWeightLifted.round(),
        averageWeightPerWorkout: averageWeight,
      ),
      activity: activity,
      topExercises: topExercises.take(10).toList(),
      personalRecords: records,
      workoutDates: workoutDates,
    );
  }
}
