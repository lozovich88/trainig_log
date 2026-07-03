import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/providers/datasource_provider.dart';
import 'package:training_log/features/exercise_form/data/repository/exercise_form_repository_impl.dart';
import 'package:training_log/features/exercise_form/domain/repository/exercise_form_repository.dart';
import 'package:training_log/features/exercise_form/domain/usecase/get_all_exercises_usecase.dart';
import 'package:training_log/features/exercise_form/domain/usecase/get_exercise_for_edit_usecase.dart';
import 'package:training_log/features/exercise_form/domain/usecase/save_exercise_usecase.dart';

part 'exercise_form_providers.g.dart';

final exerciseFormRepositoryProvider = Provider<ExerciseFormRepository>((ref) {
  return ExerciseFormRepositoryImpl(ref.watch(workoutLocalDataSourceProvider));
});

@riverpod
GetAllExercisesUseCase getAllExercisesUseCase(Ref ref) {
  return GetAllExercisesUseCase(ref.watch(exerciseFormRepositoryProvider));
}

@riverpod
SaveExerciseUseCase saveExerciseUseCase(Ref ref) {
  return SaveExerciseUseCase(ref.watch(exerciseFormRepositoryProvider));
}

@riverpod
GetExerciseForEditUseCase getExerciseForEditUseCase(Ref ref) {
  return GetExerciseForEditUseCase(ref.watch(exerciseFormRepositoryProvider));
}
