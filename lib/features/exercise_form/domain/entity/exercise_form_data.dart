import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/features/exercise_form/domain/entity/set_input.dart';

part 'exercise_form_data.freezed.dart';

@freezed
abstract class ExerciseFormData with _$ExerciseFormData {
  const factory ExerciseFormData({
    @Default('') String name,
    @Default(<SetInput>[SetInput()]) List<SetInput> sets,
  }) = _ExerciseFormData;
}
