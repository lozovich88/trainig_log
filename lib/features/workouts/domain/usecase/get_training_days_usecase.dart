import 'package:training_log/core/domain/entity/training_day_entity.dart';
import 'package:training_log/features/workouts/domain/repository/workouts_repository.dart';

class GetTrainingDaysUseCase {
  GetTrainingDaysUseCase(this._repository);

  final WorkoutsRepository _repository;

  Future<List<TrainingDayEntity>> call() {
    return _repository.getTrainingDays();
  }
}
