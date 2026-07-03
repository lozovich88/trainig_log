// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivityPoint {

 DateTime get date; int get completedSets;
/// Create a copy of ActivityPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityPointCopyWith<ActivityPoint> get copyWith => _$ActivityPointCopyWithImpl<ActivityPoint>(this as ActivityPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.completedSets, completedSets) || other.completedSets == completedSets));
}


@override
int get hashCode => Object.hash(runtimeType,date,completedSets);

@override
String toString() {
  return 'ActivityPoint(date: $date, completedSets: $completedSets)';
}


}

/// @nodoc
abstract mixin class $ActivityPointCopyWith<$Res>  {
  factory $ActivityPointCopyWith(ActivityPoint value, $Res Function(ActivityPoint) _then) = _$ActivityPointCopyWithImpl;
@useResult
$Res call({
 DateTime date, int completedSets
});




}
/// @nodoc
class _$ActivityPointCopyWithImpl<$Res>
    implements $ActivityPointCopyWith<$Res> {
  _$ActivityPointCopyWithImpl(this._self, this._then);

  final ActivityPoint _self;
  final $Res Function(ActivityPoint) _then;

/// Create a copy of ActivityPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? completedSets = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,completedSets: null == completedSets ? _self.completedSets : completedSets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityPoint].
extension ActivityPointPatterns on ActivityPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityPoint value)  $default,){
final _that = this;
switch (_that) {
case _ActivityPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityPoint value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int completedSets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityPoint() when $default != null:
return $default(_that.date,_that.completedSets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int completedSets)  $default,) {final _that = this;
switch (_that) {
case _ActivityPoint():
return $default(_that.date,_that.completedSets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int completedSets)?  $default,) {final _that = this;
switch (_that) {
case _ActivityPoint() when $default != null:
return $default(_that.date,_that.completedSets);case _:
  return null;

}
}

}

/// @nodoc


class _ActivityPoint implements ActivityPoint {
  const _ActivityPoint({required this.date, required this.completedSets});
  

@override final  DateTime date;
@override final  int completedSets;

/// Create a copy of ActivityPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityPointCopyWith<_ActivityPoint> get copyWith => __$ActivityPointCopyWithImpl<_ActivityPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.completedSets, completedSets) || other.completedSets == completedSets));
}


@override
int get hashCode => Object.hash(runtimeType,date,completedSets);

@override
String toString() {
  return 'ActivityPoint(date: $date, completedSets: $completedSets)';
}


}

/// @nodoc
abstract mixin class _$ActivityPointCopyWith<$Res> implements $ActivityPointCopyWith<$Res> {
  factory _$ActivityPointCopyWith(_ActivityPoint value, $Res Function(_ActivityPoint) _then) = __$ActivityPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int completedSets
});




}
/// @nodoc
class __$ActivityPointCopyWithImpl<$Res>
    implements _$ActivityPointCopyWith<$Res> {
  __$ActivityPointCopyWithImpl(this._self, this._then);

  final _ActivityPoint _self;
  final $Res Function(_ActivityPoint) _then;

/// Create a copy of ActivityPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? completedSets = null,}) {
  return _then(_ActivityPoint(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,completedSets: null == completedSets ? _self.completedSets : completedSets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
