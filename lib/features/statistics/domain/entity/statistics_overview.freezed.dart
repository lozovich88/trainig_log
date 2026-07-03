// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatisticsOverview {

 int get totalWorkouts; int get totalCompletedSets; int get totalWeightLifted; double get averageWeightPerWorkout;
/// Create a copy of StatisticsOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatisticsOverviewCopyWith<StatisticsOverview> get copyWith => _$StatisticsOverviewCopyWithImpl<StatisticsOverview>(this as StatisticsOverview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatisticsOverview&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalCompletedSets, totalCompletedSets) || other.totalCompletedSets == totalCompletedSets)&&(identical(other.totalWeightLifted, totalWeightLifted) || other.totalWeightLifted == totalWeightLifted)&&(identical(other.averageWeightPerWorkout, averageWeightPerWorkout) || other.averageWeightPerWorkout == averageWeightPerWorkout));
}


@override
int get hashCode => Object.hash(runtimeType,totalWorkouts,totalCompletedSets,totalWeightLifted,averageWeightPerWorkout);

@override
String toString() {
  return 'StatisticsOverview(totalWorkouts: $totalWorkouts, totalCompletedSets: $totalCompletedSets, totalWeightLifted: $totalWeightLifted, averageWeightPerWorkout: $averageWeightPerWorkout)';
}


}

/// @nodoc
abstract mixin class $StatisticsOverviewCopyWith<$Res>  {
  factory $StatisticsOverviewCopyWith(StatisticsOverview value, $Res Function(StatisticsOverview) _then) = _$StatisticsOverviewCopyWithImpl;
@useResult
$Res call({
 int totalWorkouts, int totalCompletedSets, int totalWeightLifted, double averageWeightPerWorkout
});




}
/// @nodoc
class _$StatisticsOverviewCopyWithImpl<$Res>
    implements $StatisticsOverviewCopyWith<$Res> {
  _$StatisticsOverviewCopyWithImpl(this._self, this._then);

  final StatisticsOverview _self;
  final $Res Function(StatisticsOverview) _then;

/// Create a copy of StatisticsOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalWorkouts = null,Object? totalCompletedSets = null,Object? totalWeightLifted = null,Object? averageWeightPerWorkout = null,}) {
  return _then(_self.copyWith(
totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalCompletedSets: null == totalCompletedSets ? _self.totalCompletedSets : totalCompletedSets // ignore: cast_nullable_to_non_nullable
as int,totalWeightLifted: null == totalWeightLifted ? _self.totalWeightLifted : totalWeightLifted // ignore: cast_nullable_to_non_nullable
as int,averageWeightPerWorkout: null == averageWeightPerWorkout ? _self.averageWeightPerWorkout : averageWeightPerWorkout // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StatisticsOverview].
extension StatisticsOverviewPatterns on StatisticsOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatisticsOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatisticsOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatisticsOverview value)  $default,){
final _that = this;
switch (_that) {
case _StatisticsOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatisticsOverview value)?  $default,){
final _that = this;
switch (_that) {
case _StatisticsOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalWorkouts,  int totalCompletedSets,  int totalWeightLifted,  double averageWeightPerWorkout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatisticsOverview() when $default != null:
return $default(_that.totalWorkouts,_that.totalCompletedSets,_that.totalWeightLifted,_that.averageWeightPerWorkout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalWorkouts,  int totalCompletedSets,  int totalWeightLifted,  double averageWeightPerWorkout)  $default,) {final _that = this;
switch (_that) {
case _StatisticsOverview():
return $default(_that.totalWorkouts,_that.totalCompletedSets,_that.totalWeightLifted,_that.averageWeightPerWorkout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalWorkouts,  int totalCompletedSets,  int totalWeightLifted,  double averageWeightPerWorkout)?  $default,) {final _that = this;
switch (_that) {
case _StatisticsOverview() when $default != null:
return $default(_that.totalWorkouts,_that.totalCompletedSets,_that.totalWeightLifted,_that.averageWeightPerWorkout);case _:
  return null;

}
}

}

/// @nodoc


class _StatisticsOverview implements StatisticsOverview {
  const _StatisticsOverview({required this.totalWorkouts, required this.totalCompletedSets, required this.totalWeightLifted, required this.averageWeightPerWorkout});
  

@override final  int totalWorkouts;
@override final  int totalCompletedSets;
@override final  int totalWeightLifted;
@override final  double averageWeightPerWorkout;

/// Create a copy of StatisticsOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatisticsOverviewCopyWith<_StatisticsOverview> get copyWith => __$StatisticsOverviewCopyWithImpl<_StatisticsOverview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatisticsOverview&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalCompletedSets, totalCompletedSets) || other.totalCompletedSets == totalCompletedSets)&&(identical(other.totalWeightLifted, totalWeightLifted) || other.totalWeightLifted == totalWeightLifted)&&(identical(other.averageWeightPerWorkout, averageWeightPerWorkout) || other.averageWeightPerWorkout == averageWeightPerWorkout));
}


@override
int get hashCode => Object.hash(runtimeType,totalWorkouts,totalCompletedSets,totalWeightLifted,averageWeightPerWorkout);

@override
String toString() {
  return 'StatisticsOverview(totalWorkouts: $totalWorkouts, totalCompletedSets: $totalCompletedSets, totalWeightLifted: $totalWeightLifted, averageWeightPerWorkout: $averageWeightPerWorkout)';
}


}

/// @nodoc
abstract mixin class _$StatisticsOverviewCopyWith<$Res> implements $StatisticsOverviewCopyWith<$Res> {
  factory _$StatisticsOverviewCopyWith(_StatisticsOverview value, $Res Function(_StatisticsOverview) _then) = __$StatisticsOverviewCopyWithImpl;
@override @useResult
$Res call({
 int totalWorkouts, int totalCompletedSets, int totalWeightLifted, double averageWeightPerWorkout
});




}
/// @nodoc
class __$StatisticsOverviewCopyWithImpl<$Res>
    implements _$StatisticsOverviewCopyWith<$Res> {
  __$StatisticsOverviewCopyWithImpl(this._self, this._then);

  final _StatisticsOverview _self;
  final $Res Function(_StatisticsOverview) _then;

/// Create a copy of StatisticsOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalWorkouts = null,Object? totalCompletedSets = null,Object? totalWeightLifted = null,Object? averageWeightPerWorkout = null,}) {
  return _then(_StatisticsOverview(
totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalCompletedSets: null == totalCompletedSets ? _self.totalCompletedSets : totalCompletedSets // ignore: cast_nullable_to_non_nullable
as int,totalWeightLifted: null == totalWeightLifted ? _self.totalWeightLifted : totalWeightLifted // ignore: cast_nullable_to_non_nullable
as int,averageWeightPerWorkout: null == averageWeightPerWorkout ? _self.averageWeightPerWorkout : averageWeightPerWorkout // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
