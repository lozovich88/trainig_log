import 'package:training_log/features/home/domain/entity/home_content.dart';

abstract interface class HomeRepository {
  Future<HomeContent> getHomeContent(DateTime today);

  Future<void> completeSet(int progressId);
}
