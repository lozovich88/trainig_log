// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_progress_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutProgressEntity {

 int get id; DateTime get date; int get trainingExerciseId; int get completedSets;
/// Create a copy of WorkoutProgressEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutProgressEntityCopyWith<WorkoutProgressEntity> get copyWith => _$WorkoutProgressEntityCopyWithImpl<WorkoutProgressEntity>(this as WorkoutProgressEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutProgressEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.trainingExerciseId, trainingExerciseId) || other.trainingExerciseId == trainingExerciseId)&&(identical(other.completedSets, completedSets) || other.completedSets == completedSets));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,trainingExerciseId,completedSets);

@override
String toString() {
  return 'WorkoutProgressEntity(id: $id, date: $date, trainingExerciseId: $trainingExerciseId, completedSets: $completedSets)';
}


}

/// @nodoc
abstract mixin class $WorkoutProgressEntityCopyWith<$Res>  {
  factory $WorkoutProgressEntityCopyWith(WorkoutProgressEntity value, $Res Function(WorkoutProgressEntity) _then) = _$WorkoutProgressEntityCopyWithImpl;
@useResult
$Res call({
 int id, DateTime date, int trainingExerciseId, int completedSets
});




}
/// @nodoc
class _$WorkoutProgressEntityCopyWithImpl<$Res>
    implements $WorkoutProgressEntityCopyWith<$Res> {
  _$WorkoutProgressEntityCopyWithImpl(this._self, this._then);

  final WorkoutProgressEntity _self;
  final $Res Function(WorkoutProgressEntity) _then;

/// Create a copy of WorkoutProgressEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? trainingExerciseId = null,Object? completedSets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,trainingExerciseId: null == trainingExerciseId ? _self.trainingExerciseId : trainingExerciseId // ignore: cast_nullable_to_non_nullable
as int,completedSets: null == completedSets ? _self.completedSets : completedSets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutProgressEntity].
extension WorkoutProgressEntityPatterns on WorkoutProgressEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutProgressEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutProgressEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutProgressEntity value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutProgressEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutProgressEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutProgressEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime date,  int trainingExerciseId,  int completedSets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutProgressEntity() when $default != null:
return $default(_that.id,_that.date,_that.trainingExerciseId,_that.completedSets);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime date,  int trainingExerciseId,  int completedSets)  $default,) {final _that = this;
switch (_that) {
case _WorkoutProgressEntity():
return $default(_that.id,_that.date,_that.trainingExerciseId,_that.completedSets);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime date,  int trainingExerciseId,  int completedSets)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutProgressEntity() when $default != null:
return $default(_that.id,_that.date,_that.trainingExerciseId,_that.completedSets);case _:
  return null;

}
}

}

/// @nodoc


class _WorkoutProgressEntity implements WorkoutProgressEntity {
  const _WorkoutProgressEntity({required this.id, required this.date, required this.trainingExerciseId, required this.completedSets});
  

@override final  int id;
@override final  DateTime date;
@override final  int trainingExerciseId;
@override final  int completedSets;

/// Create a copy of WorkoutProgressEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutProgressEntityCopyWith<_WorkoutProgressEntity> get copyWith => __$WorkoutProgressEntityCopyWithImpl<_WorkoutProgressEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutProgressEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.trainingExerciseId, trainingExerciseId) || other.trainingExerciseId == trainingExerciseId)&&(identical(other.completedSets, completedSets) || other.completedSets == completedSets));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,trainingExerciseId,completedSets);

@override
String toString() {
  return 'WorkoutProgressEntity(id: $id, date: $date, trainingExerciseId: $trainingExerciseId, completedSets: $completedSets)';
}


}

/// @nodoc
abstract mixin class _$WorkoutProgressEntityCopyWith<$Res> implements $WorkoutProgressEntityCopyWith<$Res> {
  factory _$WorkoutProgressEntityCopyWith(_WorkoutProgressEntity value, $Res Function(_WorkoutProgressEntity) _then) = __$WorkoutProgressEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime date, int trainingExerciseId, int completedSets
});




}
/// @nodoc
class __$WorkoutProgressEntityCopyWithImpl<$Res>
    implements _$WorkoutProgressEntityCopyWith<$Res> {
  __$WorkoutProgressEntityCopyWithImpl(this._self, this._then);

  final _WorkoutProgressEntity _self;
  final $Res Function(_WorkoutProgressEntity) _then;

/// Create a copy of WorkoutProgressEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? trainingExerciseId = null,Object? completedSets = null,}) {
  return _then(_WorkoutProgressEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,trainingExerciseId: null == trainingExerciseId ? _self.trainingExerciseId : trainingExerciseId // ignore: cast_nullable_to_non_nullable
as int,completedSets: null == completedSets ? _self.completedSets : completedSets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
