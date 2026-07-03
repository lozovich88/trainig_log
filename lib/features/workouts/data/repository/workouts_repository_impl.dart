import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/data/mapper/workout_mapper.dart';
import 'package:training_log/core/domain/entity/training_day_entity.dart';
import 'package:training_log/features/workouts/domain/repository/workouts_repository.dart';

class WorkoutsRepositoryImpl implements WorkoutsRepository {
  WorkoutsRepositoryImpl(this._dataSource);

  final WorkoutLocalDataSource _dataSource;

  @override
  Future<List<TrainingDayEntity>> getTrainingDays() async {
    final rows = await _dataSource.getTrainingDays();
    return rows.map(WorkoutMapper.toTrainingDay).toList();
  }

  @override
  Future<void> saveTrainingDays(List<int> weekdays) {
    final uniqueSorted = weekdays.toSet().toList()..sort();
    return _dataSource.replaceTrainingDays(uniqueSorted);
  }
}
