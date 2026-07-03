import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_entity.freezed.dart';

@freezed
abstract class ExerciseEntity with _$ExerciseEntity {
  const factory ExerciseEntity({
    required int id,
    required String name,
  }) = _ExerciseEntity;
}
