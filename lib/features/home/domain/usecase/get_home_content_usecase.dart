import 'package:training_log/features/home/domain/entity/home_content.dart';
import 'package:training_log/features/home/domain/repository/home_repository.dart';

class GetHomeContentUseCase {
  GetHomeContentUseCase(this._repository);

  final HomeRepository _repository;

  Future<HomeContent> call(DateTime today) {
    return _repository.getHomeContent(today);
  }
}
