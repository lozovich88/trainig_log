import 'package:training_log/features/workouts/domain/repository/workouts_repository.dart';

class SaveTrainingDaysUseCase {
  SaveTrainingDaysUseCase(this._repository);

  final WorkoutsRepository _repository;

  Future<void> call(List<int> weekdays) {
    return _repository.saveTrainingDays(weekdays);
  }
}
