import 'package:training_log/core/domain/entity/training_day_entity.dart';

abstract interface class WorkoutsRepository {
  Future<List<TrainingDayEntity>> getTrainingDays();

  Future<void> saveTrainingDays(List<int> weekdays);
}
