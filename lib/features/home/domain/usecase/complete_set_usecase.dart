import 'package:training_log/features/home/domain/repository/home_repository.dart';

class CompleteSetUseCase {
  CompleteSetUseCase(this._repository);

  final HomeRepository _repository;

  Future<void> call(int progressId) {
    return _repository.completeSet(progressId);
  }
}
