import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class UiState<T> with _$UiState<T> {
  const factory UiState.loading() = UiLoading<T>;

  const factory UiState.content(T data) = UiContent<T>;

  const factory UiState.empty() = UiEmpty<T>;

  const factory UiState.error(String message) = UiError<T>;
}
