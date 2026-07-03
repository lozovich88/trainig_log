import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_input.freezed.dart';

@freezed
abstract class SetInput with _$SetInput {
  const factory SetInput({
    int? id,
    @Default('') String weightText,
    @Default('') String repsText,
  }) = _SetInput;
}
