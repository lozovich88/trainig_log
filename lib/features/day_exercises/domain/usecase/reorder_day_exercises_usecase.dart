import 'package:training_log/features/day_exercises/domain/repository/day_exercises_repository.dart';

class ReorderDayExercisesUseCase {
  ReorderDayExercisesUseCase(this._repository);

  final DayExercisesRepository _repository;

  Future<void> call(int dayId, List<int> orderedIds) {
    return _repository.reorderExercises(dayId, orderedIds);
  }
}
