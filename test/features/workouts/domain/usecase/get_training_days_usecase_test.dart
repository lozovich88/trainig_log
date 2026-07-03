import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:training_log/core/domain/entity/training_day_entity.dart';
import 'package:training_log/features/workouts/domain/repository/workouts_repository.dart';
import 'package:training_log/features/workouts/domain/usecase/get_training_days_usecase.dart';

class _MockWorkoutsRepository extends Mock implements WorkoutsRepository {}

void main() {
  late _MockWorkoutsRepository repository;
  late GetTrainingDaysUseCase useCase;

  setUp(() {
    repository = _MockWorkoutsRepository();
    useCase = GetTrainingDaysUseCase(repository);
  });

  test('WHEN repository returns days EXPECT same list', () async {
    // Prepare
    final expected = [
      const TrainingDayEntity(id: 1, weekday: DateTime.monday),
      const TrainingDayEntity(id: 2, weekday: DateTime.wednesday),
    ];
    when(() => repository.getTrainingDays()).thenAnswer((_) async => expected);

    // Do
    final actual = await useCase();

    // Check
    expect(actual, expected);
    verify(() => repository.getTrainingDays()).called(1);
  });
}
