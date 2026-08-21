import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Gym Workout Diary'**
  String get appTitle;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navWorkouts.
  ///
  /// In en, this message translates to:
  /// **'Workouts'**
  String get navWorkouts;

  /// No description provided for @navStatistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get navStatistics;

  /// No description provided for @homeNoPlanTitle.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have a workout plan yet'**
  String get homeNoPlanTitle;

  /// No description provided for @homeNoPlanAction.
  ///
  /// In en, this message translates to:
  /// **'Create workout'**
  String get homeNoPlanAction;

  /// No description provided for @homeRestDay.
  ///
  /// In en, this message translates to:
  /// **'Today is a rest day'**
  String get homeRestDay;

  /// No description provided for @homeWeightLiftedToday.
  ///
  /// In en, this message translates to:
  /// **'Lifted today: {weight} kg'**
  String homeWeightLiftedToday(int weight);

  /// No description provided for @homeSetProgress.
  ///
  /// In en, this message translates to:
  /// **'Set {current} of {total}'**
  String homeSetProgress(int current, int total);

  /// No description provided for @homeSetDetails.
  ///
  /// In en, this message translates to:
  /// **'{weight} kg × {reps}'**
  String homeSetDetails(String weight, int reps);

  /// No description provided for @homeCalendarTitle.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get homeCalendarTitle;

  /// No description provided for @homeCalendarToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get homeCalendarToday;

  /// No description provided for @homeAllExercisesCompleted.
  ///
  /// In en, this message translates to:
  /// **'All exercises completed for this day'**
  String get homeAllExercisesCompleted;

  /// No description provided for @homeWeightLiftedOnDate.
  ///
  /// In en, this message translates to:
  /// **'Lifted on {date}: {weight} kg'**
  String homeWeightLiftedOnDate(String date, int weight);

  /// No description provided for @homeRestDayOnDate.
  ///
  /// In en, this message translates to:
  /// **'Rest day on {date}'**
  String homeRestDayOnDate(String date);

  /// No description provided for @workoutsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Select your workout days'**
  String get workoutsEmpty;

  /// No description provided for @workoutsConfigure.
  ///
  /// In en, this message translates to:
  /// **'Configure'**
  String get workoutsConfigure;

  /// No description provided for @workoutsSelectDays.
  ///
  /// In en, this message translates to:
  /// **'Select workout days'**
  String get workoutsSelectDays;

  /// No description provided for @workoutsSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get workoutsSave;

  /// No description provided for @workoutsCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get workoutsCancel;

  /// No description provided for @weekdayMonday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get weekdayMonday;

  /// No description provided for @weekdayTuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get weekdayTuesday;

  /// No description provided for @weekdayWednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get weekdayWednesday;

  /// No description provided for @weekdayThursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get weekdayThursday;

  /// No description provided for @weekdayFriday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get weekdayFriday;

  /// No description provided for @weekdaySaturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get weekdaySaturday;

  /// No description provided for @weekdaySunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get weekdaySunday;

  /// No description provided for @dayExercisesTitle.
  ///
  /// In en, this message translates to:
  /// **'Exercises'**
  String get dayExercisesTitle;

  /// No description provided for @dayExercisesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No exercises for this day'**
  String get dayExercisesEmpty;

  /// No description provided for @dayExercisesAdd.
  ///
  /// In en, this message translates to:
  /// **'Add exercise'**
  String get dayExercisesAdd;

  /// No description provided for @dayExercisesSetsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} sets'**
  String dayExercisesSetsCount(int count);

  /// No description provided for @dayExercisesDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get dayExercisesDelete;

  /// No description provided for @dayExercisesEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get dayExercisesEdit;

  /// No description provided for @exerciseFormTitle.
  ///
  /// In en, this message translates to:
  /// **'Add exercise'**
  String get exerciseFormTitle;

  /// No description provided for @exerciseFormEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit exercise'**
  String get exerciseFormEditTitle;

  /// No description provided for @exerciseFormName.
  ///
  /// In en, this message translates to:
  /// **'Exercise name'**
  String get exerciseFormName;

  /// No description provided for @exerciseFormNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Bench press'**
  String get exerciseFormNameHint;

  /// No description provided for @exerciseFormSets.
  ///
  /// In en, this message translates to:
  /// **'Sets'**
  String get exerciseFormSets;

  /// No description provided for @exerciseFormSetNumber.
  ///
  /// In en, this message translates to:
  /// **'Set {number}'**
  String exerciseFormSetNumber(int number);

  /// No description provided for @exerciseFormWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get exerciseFormWeight;

  /// No description provided for @exerciseFormReps.
  ///
  /// In en, this message translates to:
  /// **'Repetitions'**
  String get exerciseFormReps;

  /// No description provided for @exerciseFormAddSet.
  ///
  /// In en, this message translates to:
  /// **'Add set'**
  String get exerciseFormAddSet;

  /// No description provided for @exerciseFormRemoveSet.
  ///
  /// In en, this message translates to:
  /// **'Remove set'**
  String get exerciseFormRemoveSet;

  /// No description provided for @exerciseFormSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get exerciseFormSave;

  /// No description provided for @exerciseFormSelectExisting.
  ///
  /// In en, this message translates to:
  /// **'Select existing'**
  String get exerciseFormSelectExisting;

  /// No description provided for @exerciseFormSelectExistingTitle.
  ///
  /// In en, this message translates to:
  /// **'Existing exercises'**
  String get exerciseFormSelectExistingTitle;

  /// No description provided for @exerciseFormValidationName.
  ///
  /// In en, this message translates to:
  /// **'Enter exercise name'**
  String get exerciseFormValidationName;

  /// No description provided for @exerciseFormValidationSets.
  ///
  /// In en, this message translates to:
  /// **'Add at least one set'**
  String get exerciseFormValidationSets;

  /// No description provided for @statisticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statisticsTitle;

  /// No description provided for @statisticsOverview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get statisticsOverview;

  /// No description provided for @statisticsTotalWorkouts.
  ///
  /// In en, this message translates to:
  /// **'Total workouts'**
  String get statisticsTotalWorkouts;

  /// No description provided for @statisticsTotalSets.
  ///
  /// In en, this message translates to:
  /// **'Completed sets'**
  String get statisticsTotalSets;

  /// No description provided for @statisticsTotalWeight.
  ///
  /// In en, this message translates to:
  /// **'Total weight lifted'**
  String get statisticsTotalWeight;

  /// No description provided for @statisticsAvgWeight.
  ///
  /// In en, this message translates to:
  /// **'Avg. weight per workout'**
  String get statisticsAvgWeight;

  /// No description provided for @statisticsActivityChart.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get statisticsActivityChart;

  /// No description provided for @statisticsTopExercises.
  ///
  /// In en, this message translates to:
  /// **'Top exercises'**
  String get statisticsTopExercises;

  /// No description provided for @statisticsPersonalRecords.
  ///
  /// In en, this message translates to:
  /// **'Personal records'**
  String get statisticsPersonalRecords;

  /// No description provided for @statisticsMaxWeight.
  ///
  /// In en, this message translates to:
  /// **'Max weight: {weight} kg'**
  String statisticsMaxWeight(String weight);

  /// No description provided for @statisticsMaxVolume.
  ///
  /// In en, this message translates to:
  /// **'Max volume: {volume} kg'**
  String statisticsMaxVolume(String volume);

  /// No description provided for @statisticsCalendar.
  ///
  /// In en, this message translates to:
  /// **'Workout calendar'**
  String get statisticsCalendar;

  /// No description provided for @statisticsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Complete your first workout to see detailed statistics'**
  String get statisticsEmpty;

  /// No description provided for @statisticsKg.
  ///
  /// In en, this message translates to:
  /// **'{value} kg'**
  String statisticsKg(String value);

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorGeneric;

  /// No description provided for @errorRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get errorRetry;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
