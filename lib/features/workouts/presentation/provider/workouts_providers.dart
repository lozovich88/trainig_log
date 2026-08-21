import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_log/core/domain/entity/training_day_entity.dart';
import 'package:training_log/core/providers/datasource_provider.dart';
import 'package:training_log/core/state/ui_state.dart';
import 'package:training_log/core/monitoring/monitoring_providers.dart';
import 'package:training_log/features/home/presentation/provider/home_providers.dart';
import 'package:training_log/features/workouts/data/repository/workouts_repository_impl.dart';
import 'package:training_log/features/workouts/domain/repository/workouts_repository.dart';
import 'package:training_log/features/workouts/domain/usecase/get_training_days_usecase.dart';
import 'package:training_log/features/workouts/domain/usecase/save_training_days_usecase.dart';

part 'workouts_providers.g.dart';

final workoutsRepositoryProvider = Provider<WorkoutsRepository>((ref) {
  return WorkoutsRepositoryImpl(ref.watch(workoutLocalDataSourceProvider));
});

@riverpod
class WorkoutsController extends _$WorkoutsController {
  late final GetTrainingDaysUseCase _getTrainingDays;
  late final SaveTrainingDaysUseCase _saveTrainingDays;

  @override
  Future<UiState<List<TrainingDayEntity>>> build() async {
    _getTrainingDays = GetTrainingDaysUseCase(ref.watch(workoutsRepositoryProvider));
    _saveTrainingDays = SaveTrainingDaysUseCase(ref.watch(workoutsRepositoryProvider));
    return _load();
  }

  Future<UiState<List<TrainingDayEntity>>> _load() async {
    try {
      final days = await _getTrainingDays();
      if (days.isEmpty) {
        return const UiState.empty();
      }
      return UiState.content(days);
    } catch (error) {
      return UiState.error(error.toString());
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await _load());
  }

  Future<void> saveDays(List<int> weekdays) async {
    await _saveTrainingDays(weekdays);
    await ref.read(appAnalyticsProvider).logTrainingDaysSaved(daysCount: weekdays.length);
    ref.invalidate(homeControllerProvider);
    await refresh();
  }
}
