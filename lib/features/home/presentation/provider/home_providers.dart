import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/monitoring/monitoring_providers.dart';
import 'package:training_log/core/providers/datasource_provider.dart';
import 'package:training_log/core/state/ui_state.dart';
import 'package:training_log/core/utils/date_utils.dart';
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
  late DateTime _selectedDate;

  @override
  Future<UiState<HomeContent>> build() async {
    _getHomeContent = GetHomeContentUseCase(ref.watch(homeRepositoryProvider));
    _completeSet = CompleteSetUseCase(ref.watch(homeRepositoryProvider));
    _selectedDate = DateUtils.normalize(DateTime.now());
    return _load(_selectedDate);
  }

  Future<UiState<HomeContent>> _load(DateTime date) async {
    try {
      final content = await _getHomeContent(date);
      return switch (content) {
        HomeNoPlan() => const UiState.content(HomeContent.noPlan()),
        HomeRestDay() => UiState.content(content),
        HomeWorkout(:final exercises) when exercises.isEmpty => UiState.content(content),
        _ => UiState.content(content),
      };
    } catch (error) {
      return UiState.error(error.toString());
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await _load(_selectedDate));
  }

  Future<void> selectDate(DateTime date) async {
    _selectedDate = DateUtils.normalize(date);
    state = AsyncData(await _load(_selectedDate));
  }

  Future<void> completeSet(int progressId) async {
    final current = state.valueOrNull;
    if (current is! UiContent<HomeContent>) {
      return;
    }
    await _completeSet(progressId);
    await ref.read(appAnalyticsProvider).logSetCompleted(progressId: progressId);
    state = AsyncData(await _load(_selectedDate));
  }
}
