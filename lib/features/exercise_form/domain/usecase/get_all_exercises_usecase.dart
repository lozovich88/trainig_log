import 'package:training_log/core/domain/entity/exercise_entity.dart';
import 'package:training_log/features/exercise_form/domain/repository/exercise_form_repository.dart';

class GetAllExercisesUseCase {
  GetAllExercisesUseCase(this._repository);

  final ExerciseFormRepository _repository;

  Future<List<ExerciseEntity>> call() {
    return _repository.getAllExercises();
  }
}
