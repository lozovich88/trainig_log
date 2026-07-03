// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_day_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrainingDayEntity {

 int get id; int get weekday;
/// Create a copy of TrainingDayEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainingDayEntityCopyWith<TrainingDayEntity> get copyWith => _$TrainingDayEntityCopyWithImpl<TrainingDayEntity>(this as TrainingDayEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainingDayEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.weekday, weekday) || other.weekday == weekday));
}


@override
int get hashCode => Object.hash(runtimeType,id,weekday);

@override
String toString() {
  return 'TrainingDayEntity(id: $id, weekday: $weekday)';
}


}

/// @nodoc
abstract mixin class $TrainingDayEntityCopyWith<$Res>  {
  factory $TrainingDayEntityCopyWith(TrainingDayEntity value, $Res Function(TrainingDayEntity) _then) = _$TrainingDayEntityCopyWithImpl;
@useResult
$Res call({
 int id, int weekday
});




}
/// @nodoc
class _$TrainingDayEntityCopyWithImpl<$Res>
    implements $TrainingDayEntityCopyWith<$Res> {
  _$TrainingDayEntityCopyWithImpl(this._self, this._then);

  final TrainingDayEntity _self;
  final $Res Function(TrainingDayEntity) _then;

/// Create a copy of TrainingDayEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? weekday = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainingDayEntity].
extension TrainingDayEntityPatterns on TrainingDayEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainingDayEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainingDayEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainingDayEntity value)  $default,){
final _that = this;
switch (_that) {
case _TrainingDayEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainingDayEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TrainingDayEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int weekday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainingDayEntity() when $default != null:
return $default(_that.id,_that.weekday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int weekday)  $default,) {final _that = this;
switch (_that) {
case _TrainingDayEntity():
return $default(_that.id,_that.weekday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int weekday)?  $default,) {final _that = this;
switch (_that) {
case _TrainingDayEntity() when $default != null:
return $default(_that.id,_that.weekday);case _:
  return null;

}
}

}

/// @nodoc


class _TrainingDayEntity implements TrainingDayEntity {
  const _TrainingDayEntity({required this.id, required this.weekday});
  

@override final  int id;
@override final  int weekday;

/// Create a copy of TrainingDayEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainingDayEntityCopyWith<_TrainingDayEntity> get copyWith => __$TrainingDayEntityCopyWithImpl<_TrainingDayEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainingDayEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.weekday, weekday) || other.weekday == weekday));
}


@override
int get hashCode => Object.hash(runtimeType,id,weekday);

@override
String toString() {
  return 'TrainingDayEntity(id: $id, weekday: $weekday)';
}


}

/// @nodoc
abstract mixin class _$TrainingDayEntityCopyWith<$Res> implements $TrainingDayEntityCopyWith<$Res> {
  factory _$TrainingDayEntityCopyWith(_TrainingDayEntity value, $Res Function(_TrainingDayEntity) _then) = __$TrainingDayEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int weekday
});




}
/// @nodoc
class __$TrainingDayEntityCopyWithImpl<$Res>
    implements _$TrainingDayEntityCopyWith<$Res> {
  __$TrainingDayEntityCopyWithImpl(this._self, this._then);

  final _TrainingDayEntity _self;
  final $Res Function(_TrainingDayEntity) _then;

/// Create a copy of TrainingDayEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weekday = null,}) {
  return _then(_TrainingDayEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
