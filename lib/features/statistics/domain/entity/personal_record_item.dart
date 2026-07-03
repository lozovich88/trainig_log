import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_record_item.freezed.dart';

@freezed
abstract class PersonalRecordItem with _$PersonalRecordItem {
  const factory PersonalRecordItem({
    required String exerciseName,
    required double maxWeight,
    required double maxVolume,
  }) = _PersonalRecordItem;
}
