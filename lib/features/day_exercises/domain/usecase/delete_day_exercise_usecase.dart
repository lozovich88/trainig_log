import 'package:training_log/features/day_exercises/domain/repository/day_exercises_repository.dart';

class DeleteDayExerciseUseCase {
  DeleteDayExerciseUseCase(this._repository);

  final DayExercisesRepository _repository;

  Future<void> call(int trainingExerciseId) {
    return _repository.deleteTrainingExercise(trainingExerciseId);
  }
}
