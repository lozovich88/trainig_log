// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Gym Workout Diary';

  @override
  String get navHome => 'Home';

  @override
  String get navWorkouts => 'Workouts';

  @override
  String get navStatistics => 'Statistics';

  @override
  String get homeNoPlanTitle => 'You don\'t have a workout plan yet';

  @override
  String get homeNoPlanAction => 'Create workout';

  @override
  String get homeRestDay => 'Today is a rest day';

  @override
  String homeWeightLiftedToday(int weight) {
    return 'Lifted today: $weight kg';
  }

  @override
  String homeSetProgress(int current, int total) {
    return 'Set $current of $total';
  }

  @override
  String homeSetDetails(String weight, int reps) {
    return '$weight kg × $reps';
  }

  @override
  String get workoutsEmpty => 'Select your workout days';

  @override
  String get workoutsConfigure => 'Configure';

  @override
  String get workoutsSelectDays => 'Select workout days';

  @override
  String get workoutsSave => 'Save';

  @override
  String get workoutsCancel => 'Cancel';

  @override
  String get weekdayMonday => 'Monday';

  @override
  String get weekdayTuesday => 'Tuesday';

  @override
  String get weekdayWednesday => 'Wednesday';

  @override
  String get weekdayThursday => 'Thursday';

  @override
  String get weekdayFriday => 'Friday';

  @override
  String get weekdaySaturday => 'Saturday';

  @override
  String get weekdaySunday => 'Sunday';

  @override
  String get dayExercisesTitle => 'Exercises';

  @override
  String get dayExercisesEmpty => 'No exercises for this day';

  @override
  String get dayExercisesAdd => 'Add exercise';

  @override
  String dayExercisesSetsCount(int count) {
    return '$count sets';
  }

  @override
  String get dayExercisesDelete => 'Delete';

  @override
  String get dayExercisesEdit => 'Edit';

  @override
  String get exerciseFormTitle => 'Add exercise';

  @override
  String get exerciseFormEditTitle => 'Edit exercise';

  @override
  String get exerciseFormName => 'Exercise name';

  @override
  String get exerciseFormNameHint => 'e.g. Bench press';

  @override
  String get exerciseFormSets => 'Sets';

  @override
  String exerciseFormSetNumber(int number) {
    return 'Set $number';
  }

  @override
  String get exerciseFormWeight => 'Weight (kg)';

  @override
  String get exerciseFormReps => 'Repetitions';

  @override
  String get exerciseFormAddSet => 'Add set';

  @override
  String get exerciseFormRemoveSet => 'Remove set';

  @override
  String get exerciseFormSave => 'Save';

  @override
  String get exerciseFormSelectExisting => 'Select existing';

  @override
  String get exerciseFormSelectExistingTitle => 'Existing exercises';

  @override
  String get exerciseFormValidationName => 'Enter exercise name';

  @override
  String get exerciseFormValidationSets => 'Add at least one set';

  @override
  String get statisticsTitle => 'Statistics';

  @override
  String get statisticsOverview => 'Overview';

  @override
  String get statisticsTotalWorkouts => 'Total workouts';

  @override
  String get statisticsTotalSets => 'Completed sets';

  @override
  String get statisticsTotalWeight => 'Total weight lifted';

  @override
  String get statisticsAvgWeight => 'Avg. weight per workout';

  @override
  String get statisticsActivityChart => 'Activity';

  @override
  String get statisticsTopExercises => 'Top exercises';

  @override
  String get statisticsPersonalRecords => 'Personal records';

  @override
  String statisticsMaxWeight(String weight) {
    return 'Max weight: $weight kg';
  }

  @override
  String statisticsMaxVolume(String volume) {
    return 'Max volume: $volume kg';
  }

  @override
  String get statisticsCalendar => 'Workout calendar';

  @override
  String get statisticsEmpty =>
      'Complete your first workout to see detailed statistics';

  @override
  String statisticsKg(String value) {
    return '$value kg';
  }

  @override
  String get errorGeneric => 'Something went wrong';

  @override
  String get errorRetry => 'Retry';

  @override
  String get loading => 'Loading...';
}
