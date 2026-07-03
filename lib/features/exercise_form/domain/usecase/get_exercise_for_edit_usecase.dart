import 'package:training_log/core/domain/entity/training_exercise_entity.dart';
import 'package:training_log/features/exercise_form/domain/repository/exercise_form_repository.dart';

class GetExerciseForEditUseCase {
  GetExerciseForEditUseCase(this._repository);

  final ExerciseFormRepository _repository;

  Future<TrainingExerciseEntity?> call(int trainingExerciseId) {
    return _repository.getTrainingExercise(trainingExerciseId);
  }
}
