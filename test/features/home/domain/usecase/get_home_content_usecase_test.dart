import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/repository/home_repository.dart';
import 'package:training_log/features/home/domain/usecase/get_home_content_usecase.dart';

class _MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  late _MockHomeRepository repository;
  late GetHomeContentUseCase useCase;

  setUp(() {
    repository = _MockHomeRepository();
    useCase = GetHomeContentUseCase(repository);
  });

  test('WHEN repository returns no plan EXPECT no plan content', () async {
    // Prepare
    final today = DateTime(2026, 6, 9);
    final expected = const HomeContent.noPlan();
    when(() => repository.getHomeContent(today)).thenAnswer((_) async => expected);

    // Do
    final actual = await useCase(today);

    // Check
    expect(actual, expected);
    verify(() => repository.getHomeContent(today)).called(1);
  });
}
