import 'package:training_log/features/exercise_form/domain/repository/exercise_form_repository.dart';

class SaveExerciseUseCase {
  SaveExerciseUseCase(this._repository);

  final ExerciseFormRepository _repository;

  Future<void> create({
    required int dayId,
    required String name,
    required List<({double weight, int repetitions})> sets,
  }) {
    return _repository.createExercise(dayId: dayId, name: name, sets: sets);
  }

  Future<void> update({
    required int trainingExerciseId,
    required String name,
    required List<({double weight, int repetitions})> sets,
  }) {
    return _repository.updateExercise(
      trainingExerciseId: trainingExerciseId,
      name: name,
      sets: sets,
    );
  }

  Future<void> linkExisting({
    required int dayId,
    required int exerciseId,
  }) {
    return _repository.linkExistingExercise(dayId: dayId, exerciseId: exerciseId);
  }
}
