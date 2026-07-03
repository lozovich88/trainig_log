import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/entity/today_exercise_item.dart';
import 'package:training_log/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._dataSource);

  final WorkoutLocalDataSource _dataSource;

  @override
  Future<HomeContent> getHomeContent(DateTime today) async {
    final hasDays = await _dataSource.hasAnyTrainingDays();
    if (!hasDays) {
      return const HomeContent.noPlan();
    }

    final todayDay = await _dataSource.getTrainingDayByWeekday(today.weekday);
    if (todayDay == null) {
      return const HomeContent.restDay();
    }

    final trainingExercises = await _dataSource.getTrainingExercisesForDay(todayDay.id);
    if (trainingExercises.isEmpty) {
      return const HomeContent.restDay();
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

      final progressId = await _dataSource.getOrCreateProgressForToday(trainingExercise.id, today);
      final progress = await _dataSource.getProgressForToday(trainingExercise.id, today);
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

    if (items.isEmpty) {
      return HomeContent.workout(liftedWeightToday: liftedWeight, exercises: const []);
    }

    return HomeContent.workout(liftedWeightToday: liftedWeight, exercises: items);
  }

  @override
  Future<void> completeSet(int progressId) {
    return _dataSource.incrementCompletedSets(progressId);
  }
}
