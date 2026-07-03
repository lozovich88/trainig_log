// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainingExerciseEntity {

 int get id; int get dayId; int get exerciseId; int get order; String get exerciseName; List<ExerciseSetEntity> get sets;
/// Create a copy of TrainingExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingExerciseEntityCopyWith<TrainingExerciseEntity> get copyWith => _$TrainingExerciseEntityCopyWithImpl<TrainingExerciseEntity>(this as TrainingExerciseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingExerciseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.dayId, dayId) || other.dayId == dayId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.order, order) || other.order == order)&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&const DeepCollectionEquality().equals(other.sets, sets));
}


@override
int get hashCode => Object.hash(runtimeType,id,dayId,exerciseId,order,exerciseName,const DeepCollectionEquality().hash(sets));

@override
String toString() {
  return 'TrainingExerciseEntity(id: $id, dayId: $dayId, exerciseId: $exerciseId, order: $order, exerciseName: $exerciseName, sets: $sets)';
}


}

/// @nodoc
abstract mixin class $TrainingExerciseEntityCopyWith<$Res>  {
  factory $TrainingExerciseEntityCopyWith(TrainingExerciseEntity value, $Res Function(TrainingExerciseEntity) _then) = _$TrainingExerciseEntityCopyWithImpl;
@useResult
$Res call({
 int id, int dayId, int exerciseId, int order, String exerciseName, List<ExerciseSetEntity> sets
});




}
/// @nodoc
class _$TrainingExerciseEntityCopyWithImpl<$Res>
    implements $TrainingExerciseEntityCopyWith<$Res> {
  _$TrainingExerciseEntityCopyWithImpl(this._self, this._then);

  final TrainingExerciseEntity _self;
  final $Res Function(TrainingExerciseEntity) _then;

/// Create a copy of TrainingExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dayId = null,Object? exerciseId = null,Object? order = null,Object? exerciseName = null,Object? sets = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dayId: null == dayId ? _self.dayId : dayId // ignore: cast_nullable_to_non_nullable
as int,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as List<ExerciseSetEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainingExerciseEntity].
extension TrainingExerciseEntityPatterns on TrainingExerciseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainingExerciseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainingExerciseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainingExerciseEntity value)  $default,){
final _that = this;
switch (_that) {
case _TrainingExerciseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainingExerciseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TrainingExerciseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int dayId,  int exerciseId,  int order,  String exerciseName,  List<ExerciseSetEntity> sets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainingExerciseEntity() when $default != null:
return $default(_that.id,_that.dayId,_that.exerciseId,_that.order,_that.exerciseName,_that.sets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int dayId,  int exerciseId,  int order,  String exerciseName,  List<ExerciseSetEntity> sets)  $default,) {final _that = this;
switch (_that) {
case _TrainingExerciseEntity():
return $default(_that.id,_that.dayId,_that.exerciseId,_that.order,_that.exerciseName,_that.sets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int dayId,  int exerciseId,  int order,  String exerciseName,  List<ExerciseSetEntity> sets)?  $default,) {final _that = this;
switch (_that) {
case _TrainingExerciseEntity() when $default != null:
return $default(_that.id,_that.dayId,_that.exerciseId,_that.order,_that.exerciseName,_that.sets);case _:
  return null;

}
}

}

/// @nodoc


class _TrainingExerciseEntity implements TrainingExerciseEntity {
  const _TrainingExerciseEntity({required this.id, required this.dayId, required this.exerciseId, required this.order, required this.exerciseName, final  List<ExerciseSetEntity> sets = const <ExerciseSetEntity>[]}): _sets = sets;
  

@override final  int id;
@override final  int dayId;
@override final  int exerciseId;
@override final  int order;
@override final  String exerciseName;
 final  List<ExerciseSetEntity> _sets;
@override@JsonKey() List<ExerciseSetEntity> get sets {
  if (_sets is EqualUnmodifiableListView) return _sets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sets);
}


/// Create a copy of TrainingExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainingExerciseEntityCopyWith<_TrainingExerciseEntity> get copyWith => __$TrainingExerciseEntityCopyWithImpl<_TrainingExerciseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingExerciseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.dayId, dayId) || other.dayId == dayId)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.order, order) || other.order == order)&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&const DeepCollectionEquality().equals(other._sets, _sets));
}


@override
int get hashCode => Object.hash(runtimeType,id,dayId,exerciseId,order,exerciseName,const DeepCollectionEquality().hash(_sets));

@override
String toString() {
  return 'TrainingExerciseEntity(id: $id, dayId: $dayId, exerciseId: $exerciseId, order: $order, exerciseName: $exerciseName, sets: $sets)';
}


}

/// @nodoc
abstract mixin class _$TrainingExerciseEntityCopyWith<$Res> implements $TrainingExerciseEntityCopyWith<$Res> {
  factory _$TrainingExerciseEntityCopyWith(_TrainingExerciseEntity value, $Res Function(_TrainingExerciseEntity) _then) = __$TrainingExerciseEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int dayId, int exerciseId, int order, String exerciseName, List<ExerciseSetEntity> sets
});




}
/// @nodoc
class __$TrainingExerciseEntityCopyWithImpl<$Res>
    implements _$TrainingExerciseEntityCopyWith<$Res> {
  __$TrainingExerciseEntityCopyWithImpl(this._self, this._then);

  final _TrainingExerciseEntity _self;
  final $Res Function(_TrainingExerciseEntity) _then;

/// Create a copy of TrainingExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dayId = null,Object? exerciseId = null,Object? order = null,Object? exerciseName = null,Object? sets = null,}) {
  return _then(_TrainingExerciseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dayId: null == dayId ? _self.dayId : dayId // ignore: cast_nullable_to_non_nullable
as int,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self._sets : sets // ignore: cast_nullable_to_non_nullable
as List<ExerciseSetEntity>,
  ));
}


}

// dart format on
