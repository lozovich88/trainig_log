import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_day_entity.freezed.dart';

@freezed
abstract class TrainingDayEntity with _$TrainingDayEntity {
  const factory TrainingDayEntity({
    required int id,
    required int weekday,
  }) = _TrainingDayEntity;
}
