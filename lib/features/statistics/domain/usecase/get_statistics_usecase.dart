import 'package:training_log/features/statistics/domain/entity/statistics_content.dart';
import 'package:training_log/features/statistics/domain/repository/statistics_repository.dart';

class GetStatisticsUseCase {
  GetStatisticsUseCase(this._repository);

  final StatisticsRepository _repository;

  Future<StatisticsContent> call() {
    return _repository.getStatistics();
  }
}
