import 'package:training_log/features/statistics/domain/entity/statistics_content.dart';

abstract interface class StatisticsRepository {
  Future<StatisticsContent> getStatistics();
}
