import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/providers/datasource_provider.dart';
import 'package:training_log/core/state/ui_state.dart';
import 'package:training_log/features/home/data/repository/home_repository_impl.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/repository/home_repository.dart';
import 'package:training_log/features/home/domain/usecase/complete_set_usecase.dart';
import 'package:training_log/features/home/domain/usecase/get_home_content_usecase.dart';

part 'home_providers.g.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl(ref.watch(workoutLocalDataSourceProvider));
});

@riverpod
class HomeController extends _$HomeController {
  late final GetHomeContentUseCase _getHomeContent;
  late final CompleteSetUseCase _completeSet;

  @override
  Future<UiState<HomeContent>> build() async {
    _getHomeContent = GetHomeContentUseCase(ref.watch(homeRepositoryProvider));
    _completeSet = CompleteSetUseCase(ref.watch(homeRepositoryProvider));
    return _load();
  }

  Future<UiState<HomeContent>> _load() async {
    try {
      final content = await _getHomeContent(DateTime.now());
      return switch (content) {
        HomeNoPlan() => const UiState.content(HomeContent.noPlan()),
        HomeRestDay() => const UiState.content(HomeContent.restDay()),
        HomeWorkout(:final exercises) when exercises.isEmpty =>
          UiState.content(HomeContent.workout(liftedWeightToday: content.liftedWeightToday, exercises: const [])),
        _ => UiState.content(content),
      };
    } catch (error) {
      return UiState.error(error.toString());
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await _load());
  }

  Future<void> completeSet(int progressId) async {
    final current = state.valueOrNull;
    if (current is! UiContent<HomeContent>) {
      return;
    }
    await _completeSet(progressId);
    state = AsyncData(await _load());
  }
}
