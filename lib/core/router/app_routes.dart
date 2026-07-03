abstract final class AppRoutes {
  static const home = '/home';
  static const workouts = '/workouts';
  static const statistics = '/statistics';

  static String dayExercises(int dayId) => '/workouts/day/$dayId';

  static String addExercise(int dayId) => '/workouts/day/$dayId/add';

  static String editExercise(int dayId, int trainingExerciseId) =>
      '/workouts/day/$dayId/edit/$trainingExerciseId';
}
