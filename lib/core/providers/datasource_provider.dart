import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_log/core/data/datasource/workout_local_datasource.dart';
import 'package:training_log/core/providers/database_provider.dart';

final workoutLocalDataSourceProvider = Provider<WorkoutLocalDataSource>((ref) {
  return WorkoutLocalDataSource(ref.watch(appDatabaseProvider));
});
