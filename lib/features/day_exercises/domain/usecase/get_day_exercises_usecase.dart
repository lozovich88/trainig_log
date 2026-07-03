import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/features/day_exercises/domain/repository/day_exercises_repository.dart';

class GetDayExercisesUseCase {
  GetDayExercisesUseCase(this._repository);

  final DayExercisesRepository _repository;

  Future<List<TrainingExerciseEntity>> call(int dayId) {
    return _repository.getExercisesForDay(dayId);
  }
}
