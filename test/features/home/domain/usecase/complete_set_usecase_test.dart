import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:training_log/features/home/domain/repository/home_repository.dart';
import 'package:training_log/features/home/domain/usecase/complete_set_usecase.dart';

class _MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  late _MockHomeRepository repository;
  late CompleteSetUseCase useCase;

  setUp(() {
    repository = _MockHomeRepository();
    useCase = CompleteSetUseCase(repository);
  });

  test('WHEN complete set called EXPECT repository increment', () async {
    // Prepare
    const progressId = 7;
    when(() => repository.completeSet(progressId)).thenAnswer((_) async {});

    // Do
    await useCase(progressId);

    // Check
    verify(() => repository.completeSet(progressId)).called(1);
  });
}
