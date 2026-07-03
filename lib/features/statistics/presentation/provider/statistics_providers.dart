import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/providers/datasource_provider.dart';
import 'package:training_log/core/state/ui_state.dart';
import 'package:training_log/features/statistics/data/repository/statistics_repository_impl.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_content.dart';
import 'package:training_log/features/statistics/domain/repository/statistics_repository.dart';
import 'package:training_log/features/statistics/domain/usecase/get_statistics_usecase.dart';

part 'statistics_providers.g.dart';

final statisticsRepositoryProvider = Provider<StatisticsRepository>((ref) {
  return StatisticsRepositoryImpl(ref.watch(workoutLocalDataSourceProvider));
});

@riverpod
class StatisticsController extends _$StatisticsController {
  late final GetStatisticsUseCase _getStatistics;

  @override
  Future<UiState<StatisticsContent>> build() async {
    _getStatistics = GetStatisticsUseCase(ref.watch(statisticsRepositoryProvider));
    return _load();
  }

  Future<UiState<StatisticsContent>> _load() async {
    try {
      final content = await _getStatistics();
      return UiState.content(content);
    } catch (error) {
      return UiState.error(error.toString());
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await _load());
  }
}
