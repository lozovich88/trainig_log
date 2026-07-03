# Gym Workout Diary

Мобильное приложение для ведения тренировок в тренажёрном зале.

## Стек

- Flutter 3.44 / Dart 3.12
- Clean Architecture + Feature First
- Riverpod (`riverpod_generator`)
- Freezed
- GoRouter (`ShellRoute` + bottom navigation)
- Drift (SQLite)
- Flutter Hooks
- Material 3
- ARB-локализация (en / ru)

## Структура проекта

```
lib/
├── app.dart
├── main.dart
├── l10n/
│   ├── app_en.arb
│   └── app_ru.arb
├── core/
│   ├── database/          # Drift tables + AppDatabase
│   ├── data/              # Shared datasource + mappers
│   ├── domain/entity/     # Shared domain entities
│   ├── router/            # GoRouter
│   ├── theme/             # Material 3 themes
│   ├── state/             # UiState (Loading/Content/Empty/Error)
│   └── presentation/      # Shared widgets
└── features/
    ├── home/
    ├── workouts/
    ├── day_exercises/
    ├── exercise_form/
    └── statistics/
```

Каждая фича изолирована:

```
feature/
├── data/
│   ├── datasource/
│   ├── repository/
│   ├── dto/
│   └── mapper/
├── domain/
│   ├── entity/
│   ├── repository/
│   └── usecase/
└── presentation/
    ├── screen/
    ├── widget/
    ├── state/
    └── provider/
```

## База данных (Drift)

| Таблица | Назначение |
|---------|------------|
| `TrainingDays` | Дни тренировок (weekday 1–7) |
| `Exercises` | Справочник упражнений |
| `TrainingExercises` | Привязка упражнения к дню |
| `ExerciseSets` | Подходы (вес × повторения) |
| `WorkoutProgresses` | Прогресс выполнения за день |

## Навигация

Bottom Navigation через `ShellRoute`:

1. **Главная** — тренировка на сегодня
2. **Тренировки** — дни недели и упражнения
3. **Статистика** — аналитика и календарь

## Запуск

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Тесты

```bash
flutter test
```

Покрытие:

- Unit-тесты use case (domain)
- Repository-тесты с in-memory SQLite

## Локализация

Все строки UI — только через ARB:

```dart
context.l10n.homeTitle
```

Генерация: `flutter gen-l10n` (автоматически при `flutter pub get`).
