import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:training_log/features/statistics/domain/entity/activity_point.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_content.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_overview.dart';
import 'package:training_log/features/statistics/domain/repository/statistics_repository.dart';
import 'package:training_log/features/statistics/domain/usecase/get_statistics_usecase.dart';

class _MockStatisticsRepository extends Mock implements StatisticsRepository {}

void main() {
  late _MockStatisticsRepository repository;
  late GetStatisticsUseCase useCase;

  setUp(() {
    repository = _MockStatisticsRepository();
    useCase = GetStatisticsUseCase(repository);
  });

  test('WHEN no workouts completed EXPECT empty overview returned', () async {
    // Prepare
    final expected = StatisticsContent(
      overview: const StatisticsOverview(
        totalWorkouts: 0,
        totalCompletedSets: 0,
        totalWeightLifted: 0,
        averageWeightPerWorkout: 0,
      ),
      activity: const [],
      topExercises: const [],
      personalRecords: const [],
      workoutDates: const {},
    );
    when(() => repository.getStatistics()).thenAnswer((_) async => expected);

    // Do
    final actual = await useCase();

    // Check
    expect(actual.overview.totalWorkouts, 0);
    verify(() => repository.getStatistics()).called(1);
  });
}
