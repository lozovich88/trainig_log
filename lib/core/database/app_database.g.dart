// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TrainingDaysTable extends TrainingDays
    with TableInfo<$TrainingDaysTable, TrainingDay> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrainingDaysTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _weekdayMeta = const VerificationMeta(
    'weekday',
  );
  @override
  late final GeneratedColumn<int> weekday = GeneratedColumn<int>(
    'weekday',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, weekday];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'training_days';
  @override
  VerificationContext validateIntegrity(
    Insertable<TrainingDay> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('weekday')) {
      context.handle(
        _weekdayMeta,
        weekday.isAcceptableOrUnknown(data['weekday']!, _weekdayMeta),
      );
    } else if (isInserting) {
      context.missing(_weekdayMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrainingDay map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrainingDay(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      weekday: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weekday'],
      )!,
    );
  }

  @override
  $TrainingDaysTable createAlias(String alias) {
    return $TrainingDaysTable(attachedDatabase, alias);
  }
}

class TrainingDay extends DataClass implements Insertable<TrainingDay> {
  final int id;
  final int weekday;
  const TrainingDay({required this.id, required this.weekday});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['weekday'] = Variable<int>(weekday);
    return map;
  }

  TrainingDaysCompanion toCompanion(bool nullToAbsent) {
    return TrainingDaysCompanion(id: Value(id), weekday: Value(weekday));
  }

  factory TrainingDay.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrainingDay(
      id: serializer.fromJson<int>(json['id']),
      weekday: serializer.fromJson<int>(json['weekday']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'weekday': serializer.toJson<int>(weekday),
    };
  }

  TrainingDay copyWith({int? id, int? weekday}) =>
      TrainingDay(id: id ?? this.id, weekday: weekday ?? this.weekday);
  TrainingDay copyWithCompanion(TrainingDaysCompanion data) {
    return TrainingDay(
      id: data.id.present ? data.id.value : this.id,
      weekday: data.weekday.present ? data.weekday.value : this.weekday,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrainingDay(')
          ..write('id: $id, ')
          ..write('weekday: $weekday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, weekday);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrainingDay &&
          other.id == this.id &&
          other.weekday == this.weekday);
}

class TrainingDaysCompanion extends UpdateCompanion<TrainingDay> {
  final Value<int> id;
  final Value<int> weekday;
  const TrainingDaysCompanion({
    this.id = const Value.absent(),
    this.weekday = const Value.absent(),
  });
  TrainingDaysCompanion.insert({
    this.id = const Value.absent(),
    required int weekday,
  }) : weekday = Value(weekday);
  static Insertable<TrainingDay> custom({
    Expression<int>? id,
    Expression<int>? weekday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (weekday != null) 'weekday': weekday,
    });
  }

  TrainingDaysCompanion copyWith({Value<int>? id, Value<int>? weekday}) {
    return TrainingDaysCompanion(
      id: id ?? this.id,
      weekday: weekday ?? this.weekday,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (weekday.present) {
      map['weekday'] = Variable<int>(weekday.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrainingDaysCompanion(')
          ..write('id: $id, ')
          ..write('weekday: $weekday')
          ..write(')'))
        .toString();
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExercisesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercises';
  @override
  VerificationContext validateIntegrity(
    Insertable<Exercise> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Exercise(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }
}

class Exercise extends DataClass implements Insertable<Exercise> {
  final int id;
  final String name;
  const Exercise({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(id: Value(id), name: Value(name));
  }

  factory Exercise.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Exercise copyWith({int? id, String? name}) =>
      Exercise(id: id ?? this.id, name: name ?? this.name);
  Exercise copyWithCompanion(ExercisesCompanion data) {
    return Exercise(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise && other.id == this.id && other.name == this.name);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> id;
  final Value<String> name;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<Exercise> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ExercisesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return ExercisesCompanion(id: id ?? this.id, name: name ?? this.name);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $TrainingExercisesTable extends TrainingExercises
    with TableInfo<$TrainingExercisesTable, TrainingExercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrainingExercisesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dayIdMeta = const VerificationMeta('dayId');
  @override
  late final GeneratedColumn<int> dayId = GeneratedColumn<int>(
    'day_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES training_days (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _exerciseIdMeta = const VerificationMeta(
    'exerciseId',
  );
  @override
  late final GeneratedColumn<int> exerciseId = GeneratedColumn<int>(
    'exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercises (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
    'order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, dayId, exerciseId, order];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'training_exercises';
  @override
  VerificationContext validateIntegrity(
    Insertable<TrainingExercise> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('day_id')) {
      context.handle(
        _dayIdMeta,
        dayId.isAcceptableOrUnknown(data['day_id']!, _dayIdMeta),
      );
    } else if (isInserting) {
      context.missing(_dayIdMeta);
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
        _exerciseIdMeta,
        exerciseId.isAcceptableOrUnknown(data['exercise_id']!, _exerciseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
        _orderMeta,
        order.isAcceptableOrUnknown(data['order']!, _orderMeta),
      );
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrainingExercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrainingExercise(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      dayId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_id'],
      )!,
      exerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}exercise_id'],
      )!,
      order: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}order'],
      )!,
    );
  }

  @override
  $TrainingExercisesTable createAlias(String alias) {
    return $TrainingExercisesTable(attachedDatabase, alias);
  }
}

class TrainingExercise extends DataClass
    implements Insertable<TrainingExercise> {
  final int id;
  final int dayId;
  final int exerciseId;
  final int order;
  const TrainingExercise({
    required this.id,
    required this.dayId,
    required this.exerciseId,
    required this.order,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day_id'] = Variable<int>(dayId);
    map['exercise_id'] = Variable<int>(exerciseId);
    map['order'] = Variable<int>(order);
    return map;
  }

  TrainingExercisesCompanion toCompanion(bool nullToAbsent) {
    return TrainingExercisesCompanion(
      id: Value(id),
      dayId: Value(dayId),
      exerciseId: Value(exerciseId),
      order: Value(order),
    );
  }

  factory TrainingExercise.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrainingExercise(
      id: serializer.fromJson<int>(json['id']),
      dayId: serializer.fromJson<int>(json['dayId']),
      exerciseId: serializer.fromJson<int>(json['exerciseId']),
      order: serializer.fromJson<int>(json['order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dayId': serializer.toJson<int>(dayId),
      'exerciseId': serializer.toJson<int>(exerciseId),
      'order': serializer.toJson<int>(order),
    };
  }

  TrainingExercise copyWith({
    int? id,
    int? dayId,
    int? exerciseId,
    int? order,
  }) => TrainingExercise(
    id: id ?? this.id,
    dayId: dayId ?? this.dayId,
    exerciseId: exerciseId ?? this.exerciseId,
    order: order ?? this.order,
  );
  TrainingExercise copyWithCompanion(TrainingExercisesCompanion data) {
    return TrainingExercise(
      id: data.id.present ? data.id.value : this.id,
      dayId: data.dayId.present ? data.dayId.value : this.dayId,
      exerciseId: data.exerciseId.present
          ? data.exerciseId.value
          : this.exerciseId,
      order: data.order.present ? data.order.value : this.order,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrainingExercise(')
          ..write('id: $id, ')
          ..write('dayId: $dayId, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, dayId, exerciseId, order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrainingExercise &&
          other.id == this.id &&
          other.dayId == this.dayId &&
          other.exerciseId == this.exerciseId &&
          other.order == this.order);
}

class TrainingExercisesCompanion extends UpdateCompanion<TrainingExercise> {
  final Value<int> id;
  final Value<int> dayId;
  final Value<int> exerciseId;
  final Value<int> order;
  const TrainingExercisesCompanion({
    this.id = const Value.absent(),
    this.dayId = const Value.absent(),
    this.exerciseId = const Value.absent(),
    this.order = const Value.absent(),
  });
  TrainingExercisesCompanion.insert({
    this.id = const Value.absent(),
    required int dayId,
    required int exerciseId,
    required int order,
  }) : dayId = Value(dayId),
       exerciseId = Value(exerciseId),
       order = Value(order);
  static Insertable<TrainingExercise> custom({
    Expression<int>? id,
    Expression<int>? dayId,
    Expression<int>? exerciseId,
    Expression<int>? order,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dayId != null) 'day_id': dayId,
      if (exerciseId != null) 'exercise_id': exerciseId,
      if (order != null) 'order': order,
    });
  }

  TrainingExercisesCompanion copyWith({
    Value<int>? id,
    Value<int>? dayId,
    Value<int>? exerciseId,
    Value<int>? order,
  }) {
    return TrainingExercisesCompanion(
      id: id ?? this.id,
      dayId: dayId ?? this.dayId,
      exerciseId: exerciseId ?? this.exerciseId,
      order: order ?? this.order,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dayId.present) {
      map['day_id'] = Variable<int>(dayId.value);
    }
    if (exerciseId.present) {
      map['exercise_id'] = Variable<int>(exerciseId.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrainingExercisesCompanion(')
          ..write('id: $id, ')
          ..write('dayId: $dayId, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }
}

class $ExerciseSetsTable extends ExerciseSets
    with TableInfo<$ExerciseSetsTable, ExerciseSet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseSetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _trainingExerciseIdMeta =
      const VerificationMeta('trainingExerciseId');
  @override
  late final GeneratedColumn<int> trainingExerciseId = GeneratedColumn<int>(
    'training_exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES training_exercises (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _repetitionsMeta = const VerificationMeta(
    'repetitions',
  );
  @override
  late final GeneratedColumn<int> repetitions = GeneratedColumn<int>(
    'repetitions',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    trainingExerciseId,
    repetitions,
    weight,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercise_sets';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExerciseSet> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('training_exercise_id')) {
      context.handle(
        _trainingExerciseIdMeta,
        trainingExerciseId.isAcceptableOrUnknown(
          data['training_exercise_id']!,
          _trainingExerciseIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_trainingExerciseIdMeta);
    }
    if (data.containsKey('repetitions')) {
      context.handle(
        _repetitionsMeta,
        repetitions.isAcceptableOrUnknown(
          data['repetitions']!,
          _repetitionsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_repetitionsMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseSet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseSet(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      trainingExerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}training_exercise_id'],
      )!,
      repetitions: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}repetitions'],
      )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      )!,
    );
  }

  @override
  $ExerciseSetsTable createAlias(String alias) {
    return $ExerciseSetsTable(attachedDatabase, alias);
  }
}

class ExerciseSet extends DataClass implements Insertable<ExerciseSet> {
  final int id;
  final int trainingExerciseId;
  final int repetitions;
  final double weight;
  const ExerciseSet({
    required this.id,
    required this.trainingExerciseId,
    required this.repetitions,
    required this.weight,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['training_exercise_id'] = Variable<int>(trainingExerciseId);
    map['repetitions'] = Variable<int>(repetitions);
    map['weight'] = Variable<double>(weight);
    return map;
  }

  ExerciseSetsCompanion toCompanion(bool nullToAbsent) {
    return ExerciseSetsCompanion(
      id: Value(id),
      trainingExerciseId: Value(trainingExerciseId),
      repetitions: Value(repetitions),
      weight: Value(weight),
    );
  }

  factory ExerciseSet.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseSet(
      id: serializer.fromJson<int>(json['id']),
      trainingExerciseId: serializer.fromJson<int>(json['trainingExerciseId']),
      repetitions: serializer.fromJson<int>(json['repetitions']),
      weight: serializer.fromJson<double>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'trainingExerciseId': serializer.toJson<int>(trainingExerciseId),
      'repetitions': serializer.toJson<int>(repetitions),
      'weight': serializer.toJson<double>(weight),
    };
  }

  ExerciseSet copyWith({
    int? id,
    int? trainingExerciseId,
    int? repetitions,
    double? weight,
  }) => ExerciseSet(
    id: id ?? this.id,
    trainingExerciseId: trainingExerciseId ?? this.trainingExerciseId,
    repetitions: repetitions ?? this.repetitions,
    weight: weight ?? this.weight,
  );
  ExerciseSet copyWithCompanion(ExerciseSetsCompanion data) {
    return ExerciseSet(
      id: data.id.present ? data.id.value : this.id,
      trainingExerciseId: data.trainingExerciseId.present
          ? data.trainingExerciseId.value
          : this.trainingExerciseId,
      repetitions: data.repetitions.present
          ? data.repetitions.value
          : this.repetitions,
      weight: data.weight.present ? data.weight.value : this.weight,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseSet(')
          ..write('id: $id, ')
          ..write('trainingExerciseId: $trainingExerciseId, ')
          ..write('repetitions: $repetitions, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, trainingExerciseId, repetitions, weight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseSet &&
          other.id == this.id &&
          other.trainingExerciseId == this.trainingExerciseId &&
          other.repetitions == this.repetitions &&
          other.weight == this.weight);
}

class ExerciseSetsCompanion extends UpdateCompanion<ExerciseSet> {
  final Value<int> id;
  final Value<int> trainingExerciseId;
  final Value<int> repetitions;
  final Value<double> weight;
  const ExerciseSetsCompanion({
    this.id = const Value.absent(),
    this.trainingExerciseId = const Value.absent(),
    this.repetitions = const Value.absent(),
    this.weight = const Value.absent(),
  });
  ExerciseSetsCompanion.insert({
    this.id = const Value.absent(),
    required int trainingExerciseId,
    required int repetitions,
    required double weight,
  }) : trainingExerciseId = Value(trainingExerciseId),
       repetitions = Value(repetitions),
       weight = Value(weight);
  static Insertable<ExerciseSet> custom({
    Expression<int>? id,
    Expression<int>? trainingExerciseId,
    Expression<int>? repetitions,
    Expression<double>? weight,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (trainingExerciseId != null)
        'training_exercise_id': trainingExerciseId,
      if (repetitions != null) 'repetitions': repetitions,
      if (weight != null) 'weight': weight,
    });
  }

  ExerciseSetsCompanion copyWith({
    Value<int>? id,
    Value<int>? trainingExerciseId,
    Value<int>? repetitions,
    Value<double>? weight,
  }) {
    return ExerciseSetsCompanion(
      id: id ?? this.id,
      trainingExerciseId: trainingExerciseId ?? this.trainingExerciseId,
      repetitions: repetitions ?? this.repetitions,
      weight: weight ?? this.weight,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (trainingExerciseId.present) {
      map['training_exercise_id'] = Variable<int>(trainingExerciseId.value);
    }
    if (repetitions.present) {
      map['repetitions'] = Variable<int>(repetitions.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseSetsCompanion(')
          ..write('id: $id, ')
          ..write('trainingExerciseId: $trainingExerciseId, ')
          ..write('repetitions: $repetitions, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

class $WorkoutProgressesTable extends WorkoutProgresses
    with TableInfo<$WorkoutProgressesTable, WorkoutProgressesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutProgressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _trainingExerciseIdMeta =
      const VerificationMeta('trainingExerciseId');
  @override
  late final GeneratedColumn<int> trainingExerciseId = GeneratedColumn<int>(
    'training_exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES training_exercises (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _completedSetsMeta = const VerificationMeta(
    'completedSets',
  );
  @override
  late final GeneratedColumn<int> completedSets = GeneratedColumn<int>(
    'completed_sets',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    trainingExerciseId,
    completedSets,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_progresses';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutProgressesData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('training_exercise_id')) {
      context.handle(
        _trainingExerciseIdMeta,
        trainingExerciseId.isAcceptableOrUnknown(
          data['training_exercise_id']!,
          _trainingExerciseIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_trainingExerciseIdMeta);
    }
    if (data.containsKey('completed_sets')) {
      context.handle(
        _completedSetsMeta,
        completedSets.isAcceptableOrUnknown(
          data['completed_sets']!,
          _completedSetsMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutProgressesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutProgressesData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      trainingExerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}training_exercise_id'],
      )!,
      completedSets: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}completed_sets'],
      )!,
    );
  }

  @override
  $WorkoutProgressesTable createAlias(String alias) {
    return $WorkoutProgressesTable(attachedDatabase, alias);
  }
}

class WorkoutProgressesData extends DataClass
    implements Insertable<WorkoutProgressesData> {
  final int id;
  final DateTime date;
  final int trainingExerciseId;
  final int completedSets;
  const WorkoutProgressesData({
    required this.id,
    required this.date,
    required this.trainingExerciseId,
    required this.completedSets,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    map['training_exercise_id'] = Variable<int>(trainingExerciseId);
    map['completed_sets'] = Variable<int>(completedSets);
    return map;
  }

  WorkoutProgressesCompanion toCompanion(bool nullToAbsent) {
    return WorkoutProgressesCompanion(
      id: Value(id),
      date: Value(date),
      trainingExerciseId: Value(trainingExerciseId),
      completedSets: Value(completedSets),
    );
  }

  factory WorkoutProgressesData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutProgressesData(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      trainingExerciseId: serializer.fromJson<int>(json['trainingExerciseId']),
      completedSets: serializer.fromJson<int>(json['completedSets']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'trainingExerciseId': serializer.toJson<int>(trainingExerciseId),
      'completedSets': serializer.toJson<int>(completedSets),
    };
  }

  WorkoutProgressesData copyWith({
    int? id,
    DateTime? date,
    int? trainingExerciseId,
    int? completedSets,
  }) => WorkoutProgressesData(
    id: id ?? this.id,
    date: date ?? this.date,
    trainingExerciseId: trainingExerciseId ?? this.trainingExerciseId,
    completedSets: completedSets ?? this.completedSets,
  );
  WorkoutProgressesData copyWithCompanion(WorkoutProgressesCompanion data) {
    return WorkoutProgressesData(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      trainingExerciseId: data.trainingExerciseId.present
          ? data.trainingExerciseId.value
          : this.trainingExerciseId,
      completedSets: data.completedSets.present
          ? data.completedSets.value
          : this.completedSets,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutProgressesData(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('trainingExerciseId: $trainingExerciseId, ')
          ..write('completedSets: $completedSets')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date, trainingExerciseId, completedSets);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutProgressesData &&
          other.id == this.id &&
          other.date == this.date &&
          other.trainingExerciseId == this.trainingExerciseId &&
          other.completedSets == this.completedSets);
}

class WorkoutProgressesCompanion
    extends UpdateCompanion<WorkoutProgressesData> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<int> trainingExerciseId;
  final Value<int> completedSets;
  const WorkoutProgressesCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.trainingExerciseId = const Value.absent(),
    this.completedSets = const Value.absent(),
  });
  WorkoutProgressesCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
    required int trainingExerciseId,
    this.completedSets = const Value.absent(),
  }) : date = Value(date),
       trainingExerciseId = Value(trainingExerciseId);
  static Insertable<WorkoutProgressesData> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<int>? trainingExerciseId,
    Expression<int>? completedSets,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (trainingExerciseId != null)
        'training_exercise_id': trainingExerciseId,
      if (completedSets != null) 'completed_sets': completedSets,
    });
  }

  WorkoutProgressesCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? date,
    Value<int>? trainingExerciseId,
    Value<int>? completedSets,
  }) {
    return WorkoutProgressesCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      trainingExerciseId: trainingExerciseId ?? this.trainingExerciseId,
      completedSets: completedSets ?? this.completedSets,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (trainingExerciseId.present) {
      map['training_exercise_id'] = Variable<int>(trainingExerciseId.value);
    }
    if (completedSets.present) {
      map['completed_sets'] = Variable<int>(completedSets.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutProgressesCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('trainingExerciseId: $trainingExerciseId, ')
          ..write('completedSets: $completedSets')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TrainingDaysTable trainingDays = $TrainingDaysTable(this);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $TrainingExercisesTable trainingExercises =
      $TrainingExercisesTable(this);
  late final $ExerciseSetsTable exerciseSets = $ExerciseSetsTable(this);
  late final $WorkoutProgressesTable workoutProgresses =
      $WorkoutProgressesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    trainingDays,
    exercises,
    trainingExercises,
    exerciseSets,
    workoutProgresses,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'training_days',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('training_exercises', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'exercises',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('training_exercises', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'training_exercises',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('exercise_sets', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'training_exercises',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('workout_progresses', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$TrainingDaysTableCreateCompanionBuilder =
    TrainingDaysCompanion Function({Value<int> id, required int weekday});
typedef $$TrainingDaysTableUpdateCompanionBuilder =
    TrainingDaysCompanion Function({Value<int> id, Value<int> weekday});

final class $$TrainingDaysTableReferences
    extends BaseReferences<_$AppDatabase, $TrainingDaysTable, TrainingDay> {
  $$TrainingDaysTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TrainingExercisesTable, List<TrainingExercise>>
  _trainingExercisesRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.trainingExercises,
        aliasName: $_aliasNameGenerator(
          db.trainingDays.id,
          db.trainingExercises.dayId,
        ),
      );

  $$TrainingExercisesTableProcessedTableManager get trainingExercisesRefs {
    final manager = $$TrainingExercisesTableTableManager(
      $_db,
      $_db.trainingExercises,
    ).filter((f) => f.dayId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _trainingExercisesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TrainingDaysTableFilterComposer
    extends Composer<_$AppDatabase, $TrainingDaysTable> {
  $$TrainingDaysTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weekday => $composableBuilder(
    column: $table.weekday,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> trainingExercisesRefs(
    Expression<bool> Function($$TrainingExercisesTableFilterComposer f) f,
  ) {
    final $$TrainingExercisesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.trainingExercises,
      getReferencedColumn: (t) => t.dayId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingExercisesTableFilterComposer(
            $db: $db,
            $table: $db.trainingExercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TrainingDaysTableOrderingComposer
    extends Composer<_$AppDatabase, $TrainingDaysTable> {
  $$TrainingDaysTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weekday => $composableBuilder(
    column: $table.weekday,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TrainingDaysTableAnnotationComposer
    extends Composer<_$AppDatabase, $TrainingDaysTable> {
  $$TrainingDaysTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get weekday =>
      $composableBuilder(column: $table.weekday, builder: (column) => column);

  Expression<T> trainingExercisesRefs<T extends Object>(
    Expression<T> Function($$TrainingExercisesTableAnnotationComposer a) f,
  ) {
    final $$TrainingExercisesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.trainingExercises,
          getReferencedColumn: (t) => t.dayId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TrainingExercisesTableAnnotationComposer(
                $db: $db,
                $table: $db.trainingExercises,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TrainingDaysTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TrainingDaysTable,
          TrainingDay,
          $$TrainingDaysTableFilterComposer,
          $$TrainingDaysTableOrderingComposer,
          $$TrainingDaysTableAnnotationComposer,
          $$TrainingDaysTableCreateCompanionBuilder,
          $$TrainingDaysTableUpdateCompanionBuilder,
          (TrainingDay, $$TrainingDaysTableReferences),
          TrainingDay,
          PrefetchHooks Function({bool trainingExercisesRefs})
        > {
  $$TrainingDaysTableTableManager(_$AppDatabase db, $TrainingDaysTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TrainingDaysTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TrainingDaysTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TrainingDaysTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> weekday = const Value.absent(),
              }) => TrainingDaysCompanion(id: id, weekday: weekday),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required int weekday}) =>
                  TrainingDaysCompanion.insert(id: id, weekday: weekday),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TrainingDaysTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({trainingExercisesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (trainingExercisesRefs) db.trainingExercises,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (trainingExercisesRefs)
                    await $_getPrefetchedData<
                      TrainingDay,
                      $TrainingDaysTable,
                      TrainingExercise
                    >(
                      currentTable: table,
                      referencedTable: $$TrainingDaysTableReferences
                          ._trainingExercisesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$TrainingDaysTableReferences(
                            db,
                            table,
                            p0,
                          ).trainingExercisesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.dayId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TrainingDaysTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TrainingDaysTable,
      TrainingDay,
      $$TrainingDaysTableFilterComposer,
      $$TrainingDaysTableOrderingComposer,
      $$TrainingDaysTableAnnotationComposer,
      $$TrainingDaysTableCreateCompanionBuilder,
      $$TrainingDaysTableUpdateCompanionBuilder,
      (TrainingDay, $$TrainingDaysTableReferences),
      TrainingDay,
      PrefetchHooks Function({bool trainingExercisesRefs})
    >;
typedef $$ExercisesTableCreateCompanionBuilder =
    ExercisesCompanion Function({Value<int> id, required String name});
typedef $$ExercisesTableUpdateCompanionBuilder =
    ExercisesCompanion Function({Value<int> id, Value<String> name});

final class $$ExercisesTableReferences
    extends BaseReferences<_$AppDatabase, $ExercisesTable, Exercise> {
  $$ExercisesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TrainingExercisesTable, List<TrainingExercise>>
  _trainingExercisesRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.trainingExercises,
        aliasName: $_aliasNameGenerator(
          db.exercises.id,
          db.trainingExercises.exerciseId,
        ),
      );

  $$TrainingExercisesTableProcessedTableManager get trainingExercisesRefs {
    final manager = $$TrainingExercisesTableTableManager(
      $_db,
      $_db.trainingExercises,
    ).filter((f) => f.exerciseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _trainingExercisesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ExercisesTableFilterComposer
    extends Composer<_$AppDatabase, $ExercisesTable> {
  $$ExercisesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> trainingExercisesRefs(
    Expression<bool> Function($$TrainingExercisesTableFilterComposer f) f,
  ) {
    final $$TrainingExercisesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.trainingExercises,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingExercisesTableFilterComposer(
            $db: $db,
            $table: $db.trainingExercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExercisesTableOrderingComposer
    extends Composer<_$AppDatabase, $ExercisesTable> {
  $$ExercisesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExercisesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExercisesTable> {
  $$ExercisesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> trainingExercisesRefs<T extends Object>(
    Expression<T> Function($$TrainingExercisesTableAnnotationComposer a) f,
  ) {
    final $$TrainingExercisesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.trainingExercises,
          getReferencedColumn: (t) => t.exerciseId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TrainingExercisesTableAnnotationComposer(
                $db: $db,
                $table: $db.trainingExercises,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$ExercisesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExercisesTable,
          Exercise,
          $$ExercisesTableFilterComposer,
          $$ExercisesTableOrderingComposer,
          $$ExercisesTableAnnotationComposer,
          $$ExercisesTableCreateCompanionBuilder,
          $$ExercisesTableUpdateCompanionBuilder,
          (Exercise, $$ExercisesTableReferences),
          Exercise,
          PrefetchHooks Function({bool trainingExercisesRefs})
        > {
  $$ExercisesTableTableManager(_$AppDatabase db, $ExercisesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExercisesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExercisesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExercisesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
              }) => ExercisesCompanion(id: id, name: name),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String name}) =>
                  ExercisesCompanion.insert(id: id, name: name),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ExercisesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({trainingExercisesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (trainingExercisesRefs) db.trainingExercises,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (trainingExercisesRefs)
                    await $_getPrefetchedData<
                      Exercise,
                      $ExercisesTable,
                      TrainingExercise
                    >(
                      currentTable: table,
                      referencedTable: $$ExercisesTableReferences
                          ._trainingExercisesRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ExercisesTableReferences(
                            db,
                            table,
                            p0,
                          ).trainingExercisesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.exerciseId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ExercisesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExercisesTable,
      Exercise,
      $$ExercisesTableFilterComposer,
      $$ExercisesTableOrderingComposer,
      $$ExercisesTableAnnotationComposer,
      $$ExercisesTableCreateCompanionBuilder,
      $$ExercisesTableUpdateCompanionBuilder,
      (Exercise, $$ExercisesTableReferences),
      Exercise,
      PrefetchHooks Function({bool trainingExercisesRefs})
    >;
typedef $$TrainingExercisesTableCreateCompanionBuilder =
    TrainingExercisesCompanion Function({
      Value<int> id,
      required int dayId,
      required int exerciseId,
      required int order,
    });
typedef $$TrainingExercisesTableUpdateCompanionBuilder =
    TrainingExercisesCompanion Function({
      Value<int> id,
      Value<int> dayId,
      Value<int> exerciseId,
      Value<int> order,
    });

final class $$TrainingExercisesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TrainingExercisesTable,
          TrainingExercise
        > {
  $$TrainingExercisesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TrainingDaysTable _dayIdTable(_$AppDatabase db) =>
      db.trainingDays.createAlias(
        $_aliasNameGenerator(db.trainingExercises.dayId, db.trainingDays.id),
      );

  $$TrainingDaysTableProcessedTableManager get dayId {
    final $_column = $_itemColumn<int>('day_id')!;

    final manager = $$TrainingDaysTableTableManager(
      $_db,
      $_db.trainingDays,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_dayIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ExercisesTable _exerciseIdTable(_$AppDatabase db) =>
      db.exercises.createAlias(
        $_aliasNameGenerator(db.trainingExercises.exerciseId, db.exercises.id),
      );

  $$ExercisesTableProcessedTableManager get exerciseId {
    final $_column = $_itemColumn<int>('exercise_id')!;

    final manager = $$ExercisesTableTableManager(
      $_db,
      $_db.exercises,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ExerciseSetsTable, List<ExerciseSet>>
  _exerciseSetsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.exerciseSets,
    aliasName: $_aliasNameGenerator(
      db.trainingExercises.id,
      db.exerciseSets.trainingExerciseId,
    ),
  );

  $$ExerciseSetsTableProcessedTableManager get exerciseSetsRefs {
    final manager = $$ExerciseSetsTableTableManager($_db, $_db.exerciseSets)
        .filter(
          (f) => f.trainingExerciseId.id.sqlEquals($_itemColumn<int>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(_exerciseSetsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $WorkoutProgressesTable,
    List<WorkoutProgressesData>
  >
  _workoutProgressesRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.workoutProgresses,
        aliasName: $_aliasNameGenerator(
          db.trainingExercises.id,
          db.workoutProgresses.trainingExerciseId,
        ),
      );

  $$WorkoutProgressesTableProcessedTableManager get workoutProgressesRefs {
    final manager =
        $$WorkoutProgressesTableTableManager(
          $_db,
          $_db.workoutProgresses,
        ).filter(
          (f) => f.trainingExerciseId.id.sqlEquals($_itemColumn<int>('id')!),
        );

    final cache = $_typedResult.readTableOrNull(
      _workoutProgressesRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TrainingExercisesTableFilterComposer
    extends Composer<_$AppDatabase, $TrainingExercisesTable> {
  $$TrainingExercisesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnFilters(column),
  );

  $$TrainingDaysTableFilterComposer get dayId {
    final $$TrainingDaysTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.trainingDays,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingDaysTableFilterComposer(
            $db: $db,
            $table: $db.trainingDays,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExercisesTableFilterComposer get exerciseId {
    final $$ExercisesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExercisesTableFilterComposer(
            $db: $db,
            $table: $db.exercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> exerciseSetsRefs(
    Expression<bool> Function($$ExerciseSetsTableFilterComposer f) f,
  ) {
    final $$ExerciseSetsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseSets,
      getReferencedColumn: (t) => t.trainingExerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetsTableFilterComposer(
            $db: $db,
            $table: $db.exerciseSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> workoutProgressesRefs(
    Expression<bool> Function($$WorkoutProgressesTableFilterComposer f) f,
  ) {
    final $$WorkoutProgressesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutProgresses,
      getReferencedColumn: (t) => t.trainingExerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutProgressesTableFilterComposer(
            $db: $db,
            $table: $db.workoutProgresses,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TrainingExercisesTableOrderingComposer
    extends Composer<_$AppDatabase, $TrainingExercisesTable> {
  $$TrainingExercisesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get order => $composableBuilder(
    column: $table.order,
    builder: (column) => ColumnOrderings(column),
  );

  $$TrainingDaysTableOrderingComposer get dayId {
    final $$TrainingDaysTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.trainingDays,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingDaysTableOrderingComposer(
            $db: $db,
            $table: $db.trainingDays,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExercisesTableOrderingComposer get exerciseId {
    final $$ExercisesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExercisesTableOrderingComposer(
            $db: $db,
            $table: $db.exercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TrainingExercisesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TrainingExercisesTable> {
  $$TrainingExercisesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

  $$TrainingDaysTableAnnotationComposer get dayId {
    final $$TrainingDaysTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.dayId,
      referencedTable: $db.trainingDays,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingDaysTableAnnotationComposer(
            $db: $db,
            $table: $db.trainingDays,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExercisesTableAnnotationComposer get exerciseId {
    final $$ExercisesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExercisesTableAnnotationComposer(
            $db: $db,
            $table: $db.exercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> exerciseSetsRefs<T extends Object>(
    Expression<T> Function($$ExerciseSetsTableAnnotationComposer a) f,
  ) {
    final $$ExerciseSetsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.exerciseSets,
      getReferencedColumn: (t) => t.trainingExerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExerciseSetsTableAnnotationComposer(
            $db: $db,
            $table: $db.exerciseSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> workoutProgressesRefs<T extends Object>(
    Expression<T> Function($$WorkoutProgressesTableAnnotationComposer a) f,
  ) {
    final $$WorkoutProgressesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.workoutProgresses,
          getReferencedColumn: (t) => t.trainingExerciseId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$WorkoutProgressesTableAnnotationComposer(
                $db: $db,
                $table: $db.workoutProgresses,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TrainingExercisesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TrainingExercisesTable,
          TrainingExercise,
          $$TrainingExercisesTableFilterComposer,
          $$TrainingExercisesTableOrderingComposer,
          $$TrainingExercisesTableAnnotationComposer,
          $$TrainingExercisesTableCreateCompanionBuilder,
          $$TrainingExercisesTableUpdateCompanionBuilder,
          (TrainingExercise, $$TrainingExercisesTableReferences),
          TrainingExercise,
          PrefetchHooks Function({
            bool dayId,
            bool exerciseId,
            bool exerciseSetsRefs,
            bool workoutProgressesRefs,
          })
        > {
  $$TrainingExercisesTableTableManager(
    _$AppDatabase db,
    $TrainingExercisesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TrainingExercisesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TrainingExercisesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TrainingExercisesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> dayId = const Value.absent(),
                Value<int> exerciseId = const Value.absent(),
                Value<int> order = const Value.absent(),
              }) => TrainingExercisesCompanion(
                id: id,
                dayId: dayId,
                exerciseId: exerciseId,
                order: order,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int dayId,
                required int exerciseId,
                required int order,
              }) => TrainingExercisesCompanion.insert(
                id: id,
                dayId: dayId,
                exerciseId: exerciseId,
                order: order,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TrainingExercisesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                dayId = false,
                exerciseId = false,
                exerciseSetsRefs = false,
                workoutProgressesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (exerciseSetsRefs) db.exerciseSets,
                    if (workoutProgressesRefs) db.workoutProgresses,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (dayId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.dayId,
                                    referencedTable:
                                        $$TrainingExercisesTableReferences
                                            ._dayIdTable(db),
                                    referencedColumn:
                                        $$TrainingExercisesTableReferences
                                            ._dayIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (exerciseId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.exerciseId,
                                    referencedTable:
                                        $$TrainingExercisesTableReferences
                                            ._exerciseIdTable(db),
                                    referencedColumn:
                                        $$TrainingExercisesTableReferences
                                            ._exerciseIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (exerciseSetsRefs)
                        await $_getPrefetchedData<
                          TrainingExercise,
                          $TrainingExercisesTable,
                          ExerciseSet
                        >(
                          currentTable: table,
                          referencedTable: $$TrainingExercisesTableReferences
                              ._exerciseSetsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TrainingExercisesTableReferences(
                                db,
                                table,
                                p0,
                              ).exerciseSetsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.trainingExerciseId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (workoutProgressesRefs)
                        await $_getPrefetchedData<
                          TrainingExercise,
                          $TrainingExercisesTable,
                          WorkoutProgressesData
                        >(
                          currentTable: table,
                          referencedTable: $$TrainingExercisesTableReferences
                              ._workoutProgressesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TrainingExercisesTableReferences(
                                db,
                                table,
                                p0,
                              ).workoutProgressesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.trainingExerciseId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TrainingExercisesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TrainingExercisesTable,
      TrainingExercise,
      $$TrainingExercisesTableFilterComposer,
      $$TrainingExercisesTableOrderingComposer,
      $$TrainingExercisesTableAnnotationComposer,
      $$TrainingExercisesTableCreateCompanionBuilder,
      $$TrainingExercisesTableUpdateCompanionBuilder,
      (TrainingExercise, $$TrainingExercisesTableReferences),
      TrainingExercise,
      PrefetchHooks Function({
        bool dayId,
        bool exerciseId,
        bool exerciseSetsRefs,
        bool workoutProgressesRefs,
      })
    >;
typedef $$ExerciseSetsTableCreateCompanionBuilder =
    ExerciseSetsCompanion Function({
      Value<int> id,
      required int trainingExerciseId,
      required int repetitions,
      required double weight,
    });
typedef $$ExerciseSetsTableUpdateCompanionBuilder =
    ExerciseSetsCompanion Function({
      Value<int> id,
      Value<int> trainingExerciseId,
      Value<int> repetitions,
      Value<double> weight,
    });

final class $$ExerciseSetsTableReferences
    extends BaseReferences<_$AppDatabase, $ExerciseSetsTable, ExerciseSet> {
  $$ExerciseSetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TrainingExercisesTable _trainingExerciseIdTable(_$AppDatabase db) =>
      db.trainingExercises.createAlias(
        $_aliasNameGenerator(
          db.exerciseSets.trainingExerciseId,
          db.trainingExercises.id,
        ),
      );

  $$TrainingExercisesTableProcessedTableManager get trainingExerciseId {
    final $_column = $_itemColumn<int>('training_exercise_id')!;

    final manager = $$TrainingExercisesTableTableManager(
      $_db,
      $_db.trainingExercises,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_trainingExerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ExerciseSetsTableFilterComposer
    extends Composer<_$AppDatabase, $ExerciseSetsTable> {
  $$ExerciseSetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get repetitions => $composableBuilder(
    column: $table.repetitions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  $$TrainingExercisesTableFilterComposer get trainingExerciseId {
    final $$TrainingExercisesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.trainingExerciseId,
      referencedTable: $db.trainingExercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingExercisesTableFilterComposer(
            $db: $db,
            $table: $db.trainingExercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseSetsTableOrderingComposer
    extends Composer<_$AppDatabase, $ExerciseSetsTable> {
  $$ExerciseSetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get repetitions => $composableBuilder(
    column: $table.repetitions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  $$TrainingExercisesTableOrderingComposer get trainingExerciseId {
    final $$TrainingExercisesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.trainingExerciseId,
      referencedTable: $db.trainingExercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingExercisesTableOrderingComposer(
            $db: $db,
            $table: $db.trainingExercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ExerciseSetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExerciseSetsTable> {
  $$ExerciseSetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get repetitions => $composableBuilder(
    column: $table.repetitions,
    builder: (column) => column,
  );

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  $$TrainingExercisesTableAnnotationComposer get trainingExerciseId {
    final $$TrainingExercisesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.trainingExerciseId,
          referencedTable: $db.trainingExercises,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TrainingExercisesTableAnnotationComposer(
                $db: $db,
                $table: $db.trainingExercises,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$ExerciseSetsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExerciseSetsTable,
          ExerciseSet,
          $$ExerciseSetsTableFilterComposer,
          $$ExerciseSetsTableOrderingComposer,
          $$ExerciseSetsTableAnnotationComposer,
          $$ExerciseSetsTableCreateCompanionBuilder,
          $$ExerciseSetsTableUpdateCompanionBuilder,
          (ExerciseSet, $$ExerciseSetsTableReferences),
          ExerciseSet,
          PrefetchHooks Function({bool trainingExerciseId})
        > {
  $$ExerciseSetsTableTableManager(_$AppDatabase db, $ExerciseSetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExerciseSetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExerciseSetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExerciseSetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> trainingExerciseId = const Value.absent(),
                Value<int> repetitions = const Value.absent(),
                Value<double> weight = const Value.absent(),
              }) => ExerciseSetsCompanion(
                id: id,
                trainingExerciseId: trainingExerciseId,
                repetitions: repetitions,
                weight: weight,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int trainingExerciseId,
                required int repetitions,
                required double weight,
              }) => ExerciseSetsCompanion.insert(
                id: id,
                trainingExerciseId: trainingExerciseId,
                repetitions: repetitions,
                weight: weight,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ExerciseSetsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({trainingExerciseId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (trainingExerciseId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.trainingExerciseId,
                                referencedTable: $$ExerciseSetsTableReferences
                                    ._trainingExerciseIdTable(db),
                                referencedColumn: $$ExerciseSetsTableReferences
                                    ._trainingExerciseIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ExerciseSetsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExerciseSetsTable,
      ExerciseSet,
      $$ExerciseSetsTableFilterComposer,
      $$ExerciseSetsTableOrderingComposer,
      $$ExerciseSetsTableAnnotationComposer,
      $$ExerciseSetsTableCreateCompanionBuilder,
      $$ExerciseSetsTableUpdateCompanionBuilder,
      (ExerciseSet, $$ExerciseSetsTableReferences),
      ExerciseSet,
      PrefetchHooks Function({bool trainingExerciseId})
    >;
typedef $$WorkoutProgressesTableCreateCompanionBuilder =
    WorkoutProgressesCompanion Function({
      Value<int> id,
      required DateTime date,
      required int trainingExerciseId,
      Value<int> completedSets,
    });
typedef $$WorkoutProgressesTableUpdateCompanionBuilder =
    WorkoutProgressesCompanion Function({
      Value<int> id,
      Value<DateTime> date,
      Value<int> trainingExerciseId,
      Value<int> completedSets,
    });

final class $$WorkoutProgressesTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $WorkoutProgressesTable,
          WorkoutProgressesData
        > {
  $$WorkoutProgressesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TrainingExercisesTable _trainingExerciseIdTable(_$AppDatabase db) =>
      db.trainingExercises.createAlias(
        $_aliasNameGenerator(
          db.workoutProgresses.trainingExerciseId,
          db.trainingExercises.id,
        ),
      );

  $$TrainingExercisesTableProcessedTableManager get trainingExerciseId {
    final $_column = $_itemColumn<int>('training_exercise_id')!;

    final manager = $$TrainingExercisesTableTableManager(
      $_db,
      $_db.trainingExercises,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_trainingExerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$WorkoutProgressesTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutProgressesTable> {
  $$WorkoutProgressesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get completedSets => $composableBuilder(
    column: $table.completedSets,
    builder: (column) => ColumnFilters(column),
  );

  $$TrainingExercisesTableFilterComposer get trainingExerciseId {
    final $$TrainingExercisesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.trainingExerciseId,
      referencedTable: $db.trainingExercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingExercisesTableFilterComposer(
            $db: $db,
            $table: $db.trainingExercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutProgressesTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutProgressesTable> {
  $$WorkoutProgressesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get completedSets => $composableBuilder(
    column: $table.completedSets,
    builder: (column) => ColumnOrderings(column),
  );

  $$TrainingExercisesTableOrderingComposer get trainingExerciseId {
    final $$TrainingExercisesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.trainingExerciseId,
      referencedTable: $db.trainingExercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TrainingExercisesTableOrderingComposer(
            $db: $db,
            $table: $db.trainingExercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutProgressesTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutProgressesTable> {
  $$WorkoutProgressesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get completedSets => $composableBuilder(
    column: $table.completedSets,
    builder: (column) => column,
  );

  $$TrainingExercisesTableAnnotationComposer get trainingExerciseId {
    final $$TrainingExercisesTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.trainingExerciseId,
          referencedTable: $db.trainingExercises,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TrainingExercisesTableAnnotationComposer(
                $db: $db,
                $table: $db.trainingExercises,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$WorkoutProgressesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutProgressesTable,
          WorkoutProgressesData,
          $$WorkoutProgressesTableFilterComposer,
          $$WorkoutProgressesTableOrderingComposer,
          $$WorkoutProgressesTableAnnotationComposer,
          $$WorkoutProgressesTableCreateCompanionBuilder,
          $$WorkoutProgressesTableUpdateCompanionBuilder,
          (WorkoutProgressesData, $$WorkoutProgressesTableReferences),
          WorkoutProgressesData,
          PrefetchHooks Function({bool trainingExerciseId})
        > {
  $$WorkoutProgressesTableTableManager(
    _$AppDatabase db,
    $WorkoutProgressesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutProgressesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutProgressesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutProgressesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<int> trainingExerciseId = const Value.absent(),
                Value<int> completedSets = const Value.absent(),
              }) => WorkoutProgressesCompanion(
                id: id,
                date: date,
                trainingExerciseId: trainingExerciseId,
                completedSets: completedSets,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime date,
                required int trainingExerciseId,
                Value<int> completedSets = const Value.absent(),
              }) => WorkoutProgressesCompanion.insert(
                id: id,
                date: date,
                trainingExerciseId: trainingExerciseId,
                completedSets: completedSets,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WorkoutProgressesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({trainingExerciseId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (trainingExerciseId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.trainingExerciseId,
                                referencedTable:
                                    $$WorkoutProgressesTableReferences
                                        ._trainingExerciseIdTable(db),
                                referencedColumn:
                                    $$WorkoutProgressesTableReferences
                                        ._trainingExerciseIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$WorkoutProgressesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutProgressesTable,
      WorkoutProgressesData,
      $$WorkoutProgressesTableFilterComposer,
      $$WorkoutProgressesTableOrderingComposer,
      $$WorkoutProgressesTableAnnotationComposer,
      $$WorkoutProgressesTableCreateCompanionBuilder,
      $$WorkoutProgressesTableUpdateCompanionBuilder,
      (WorkoutProgressesData, $$WorkoutProgressesTableReferences),
      WorkoutProgressesData,
      PrefetchHooks Function({bool trainingExerciseId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TrainingDaysTableTableManager get trainingDays =>
      $$TrainingDaysTableTableManager(_db, _db.trainingDays);
  $$ExercisesTableTableManager get exercises =>
      $$ExercisesTableTableManager(_db, _db.exercises);
  $$TrainingExercisesTableTableManager get trainingExercises =>
      $$TrainingExercisesTableTableManager(_db, _db.trainingExercises);
  $$ExerciseSetsTableTableManager get exerciseSets =>
      $$ExerciseSetsTableTableManager(_db, _db.exerciseSets);
  $$WorkoutProgressesTableTableManager get workoutProgresses =>
      $$WorkoutProgressesTableTableManager(_db, _db.workoutProgresses);
}
