// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_set_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExerciseSetEntity {

 int get id; int get trainingExerciseId; int get repetitions; double get weight;
/// Create a copy of ExerciseSetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseSetEntityCopyWith<ExerciseSetEntity> get copyWith => _$ExerciseSetEntityCopyWithImpl<ExerciseSetEntity>(this as ExerciseSetEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseSetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.trainingExerciseId, trainingExerciseId) || other.trainingExerciseId == trainingExerciseId)&&(identical(other.repetitions, repetitions) || other.repetitions == repetitions)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,id,trainingExerciseId,repetitions,weight);

@override
String toString() {
  return 'ExerciseSetEntity(id: $id, trainingExerciseId: $trainingExerciseId, repetitions: $repetitions, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $ExerciseSetEntityCopyWith<$Res>  {
  factory $ExerciseSetEntityCopyWith(ExerciseSetEntity value, $Res Function(ExerciseSetEntity) _then) = _$ExerciseSetEntityCopyWithImpl;
@useResult
$Res call({
 int id, int trainingExerciseId, int repetitions, double weight
});




}
/// @nodoc
class _$ExerciseSetEntityCopyWithImpl<$Res>
    implements $ExerciseSetEntityCopyWith<$Res> {
  _$ExerciseSetEntityCopyWithImpl(this._self, this._then);

  final ExerciseSetEntity _self;
  final $Res Function(ExerciseSetEntity) _then;

/// Create a copy of ExerciseSetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trainingExerciseId = null,Object? repetitions = null,Object? weight = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trainingExerciseId: null == trainingExerciseId ? _self.trainingExerciseId : trainingExerciseId // ignore: cast_nullable_to_non_nullable
as int,repetitions: null == repetitions ? _self.repetitions : repetitions // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseSetEntity].
extension ExerciseSetEntityPatterns on ExerciseSetEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseSetEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseSetEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseSetEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseSetEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseSetEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseSetEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int trainingExerciseId,  int repetitions,  double weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseSetEntity() when $default != null:
return $default(_that.id,_that.trainingExerciseId,_that.repetitions,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int trainingExerciseId,  int repetitions,  double weight)  $default,) {final _that = this;
switch (_that) {
case _ExerciseSetEntity():
return $default(_that.id,_that.trainingExerciseId,_that.repetitions,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int trainingExerciseId,  int repetitions,  double weight)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseSetEntity() when $default != null:
return $default(_that.id,_that.trainingExerciseId,_that.repetitions,_that.weight);case _:
  return null;

}
}

}

/// @nodoc


class _ExerciseSetEntity implements ExerciseSetEntity {
  const _ExerciseSetEntity({required this.id, required this.trainingExerciseId, required this.repetitions, required this.weight});
  

@override final  int id;
@override final  int trainingExerciseId;
@override final  int repetitions;
@override final  double weight;

/// Create a copy of ExerciseSetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseSetEntityCopyWith<_ExerciseSetEntity> get copyWith => __$ExerciseSetEntityCopyWithImpl<_ExerciseSetEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseSetEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.trainingExerciseId, trainingExerciseId) || other.trainingExerciseId == trainingExerciseId)&&(identical(other.repetitions, repetitions) || other.repetitions == repetitions)&&(identical(other.weight, weight) || other.weight == weight));
}


@override
int get hashCode => Object.hash(runtimeType,id,trainingExerciseId,repetitions,weight);

@override
String toString() {
  return 'ExerciseSetEntity(id: $id, trainingExerciseId: $trainingExerciseId, repetitions: $repetitions, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$ExerciseSetEntityCopyWith<$Res> implements $ExerciseSetEntityCopyWith<$Res> {
  factory _$ExerciseSetEntityCopyWith(_ExerciseSetEntity value, $Res Function(_ExerciseSetEntity) _then) = __$ExerciseSetEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int trainingExerciseId, int repetitions, double weight
});




}
/// @nodoc
class __$ExerciseSetEntityCopyWithImpl<$Res>
    implements _$ExerciseSetEntityCopyWith<$Res> {
  __$ExerciseSetEntityCopyWithImpl(this._self, this._then);

  final _ExerciseSetEntity _self;
  final $Res Function(_ExerciseSetEntity) _then;

/// Create a copy of ExerciseSetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trainingExerciseId = null,Object? repetitions = null,Object? weight = null,}) {
  return _then(_ExerciseSetEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,trainingExerciseId: null == trainingExerciseId ? _self.trainingExerciseId : trainingExerciseId // ignore: cast_nullable_to_non_nullable
as int,repetitions: null == repetitions ? _self.repetitions : repetitions // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
