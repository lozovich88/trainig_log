// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Дневник тренировок';

  @override
  String get navHome => 'Главная';

  @override
  String get navWorkouts => 'Тренировки';

  @override
  String get navStatistics => 'Статистика';

  @override
  String get homeNoPlanTitle => 'У вас еще нет тренировочного плана';

  @override
  String get homeNoPlanAction => 'Создать тренировку';

  @override
  String get homeRestDay => 'Сегодня день отдыха';

  @override
  String homeWeightLiftedToday(int weight) {
    return 'Поднято сегодня: $weight кг';
  }

  @override
  String homeSetProgress(int current, int total) {
    return 'Подход $current из $total';
  }

  @override
  String homeSetDetails(String weight, int reps) {
    return '$weight кг × $reps';
  }

  @override
  String get workoutsEmpty => 'Выберите дни тренировок';

  @override
  String get workoutsConfigure => 'Настроить';

  @override
  String get workoutsSelectDays => 'Выберите дни тренировок';

  @override
  String get workoutsSave => 'Сохранить';

  @override
  String get workoutsCancel => 'Отмена';

  @override
  String get weekdayMonday => 'Понедельник';

  @override
  String get weekdayTuesday => 'Вторник';

  @override
  String get weekdayWednesday => 'Среда';

  @override
  String get weekdayThursday => 'Четверг';

  @override
  String get weekdayFriday => 'Пятница';

  @override
  String get weekdaySaturday => 'Суббота';

  @override
  String get weekdaySunday => 'Воскресенье';

  @override
  String get dayExercisesTitle => 'Упражнения';

  @override
  String get dayExercisesEmpty => 'Нет упражнений на этот день';

  @override
  String get dayExercisesAdd => 'Добавить упражнение';

  @override
  String dayExercisesSetsCount(int count) {
    return '$count подходов';
  }

  @override
  String get dayExercisesDelete => 'Удалить';

  @override
  String get dayExercisesEdit => 'Редактировать';

  @override
  String get exerciseFormTitle => 'Добавить упражнение';

  @override
  String get exerciseFormEditTitle => 'Редактировать упражнение';

  @override
  String get exerciseFormName => 'Название упражнения';

  @override
  String get exerciseFormNameHint => 'Например, жим лежа';

  @override
  String get exerciseFormSets => 'Подходы';

  @override
  String exerciseFormSetNumber(int number) {
    return 'Подход $number';
  }

  @override
  String get exerciseFormWeight => 'Вес (кг)';

  @override
  String get exerciseFormReps => 'Повторения';

  @override
  String get exerciseFormAddSet => 'Добавить подход';

  @override
  String get exerciseFormRemoveSet => 'Удалить подход';

  @override
  String get exerciseFormSave => 'Сохранить';

  @override
  String get exerciseFormSelectExisting => 'Выбрать существующее';

  @override
  String get exerciseFormSelectExistingTitle => 'Существующие упражнения';

  @override
  String get exerciseFormValidationName => 'Введите название упражнения';

  @override
  String get exerciseFormValidationSets => 'Добавьте хотя бы один подход';

  @override
  String get statisticsTitle => 'Статистика';

  @override
  String get statisticsOverview => 'Общая статистика';

  @override
  String get statisticsTotalWorkouts => 'Всего тренировок';

  @override
  String get statisticsTotalSets => 'Выполнено подходов';

  @override
  String get statisticsTotalWeight => 'Общий поднятый вес';

  @override
  String get statisticsAvgWeight => 'Средний вес за тренировку';

  @override
  String get statisticsActivityChart => 'График активности';

  @override
  String get statisticsTopExercises => 'Топ упражнений';

  @override
  String get statisticsPersonalRecords => 'Личные рекорды';

  @override
  String statisticsMaxWeight(String weight) {
    return 'Макс. вес: $weight кг';
  }

  @override
  String statisticsMaxVolume(String volume) {
    return 'Макс. объём: $volume кг';
  }

  @override
  String get statisticsCalendar => 'Календарь тренировок';

  @override
  String get statisticsEmpty =>
      'Выполните первую тренировку, чтобы увидеть статистику';

  @override
  String statisticsKg(String value) {
    return '$value кг';
  }

  @override
  String get errorGeneric => 'Что-то пошло не так';

  @override
  String get errorRetry => 'Повторить';

  @override
  String get loading => 'Загрузка...';
}
