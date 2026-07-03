// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_exercise_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodayExerciseItem {

 int get progressId; int get trainingExerciseId; String get exerciseName; int get currentSetNumber; int get totalSets; double get currentWeight; int get currentRepetitions; int get completedSets;
/// Create a copy of TodayExerciseItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayExerciseItemCopyWith<TodayExerciseItem> get copyWith => _$TodayExerciseItemCopyWithImpl<TodayExerciseItem>(this as TodayExerciseItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayExerciseItem&&(identical(other.progressId, progressId) || other.progressId == progressId)&&(identical(other.trainingExerciseId, trainingExerciseId) || other.trainingExerciseId == trainingExerciseId)&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&(identical(other.currentSetNumber, currentSetNumber) || other.currentSetNumber == currentSetNumber)&&(identical(other.totalSets, totalSets) || other.totalSets == totalSets)&&(identical(other.currentWeight, currentWeight) || other.currentWeight == currentWeight)&&(identical(other.currentRepetitions, currentRepetitions) || other.currentRepetitions == currentRepetitions)&&(identical(other.completedSets, completedSets) || other.completedSets == completedSets));
}


@override
int get hashCode => Object.hash(runtimeType,progressId,trainingExerciseId,exerciseName,currentSetNumber,totalSets,currentWeight,currentRepetitions,completedSets);

@override
String toString() {
  return 'TodayExerciseItem(progressId: $progressId, trainingExerciseId: $trainingExerciseId, exerciseName: $exerciseName, currentSetNumber: $currentSetNumber, totalSets: $totalSets, currentWeight: $currentWeight, currentRepetitions: $currentRepetitions, completedSets: $completedSets)';
}


}

/// @nodoc
abstract mixin class $TodayExerciseItemCopyWith<$Res>  {
  factory $TodayExerciseItemCopyWith(TodayExerciseItem value, $Res Function(TodayExerciseItem) _then) = _$TodayExerciseItemCopyWithImpl;
@useResult
$Res call({
 int progressId, int trainingExerciseId, String exerciseName, int currentSetNumber, int totalSets, double currentWeight, int currentRepetitions, int completedSets
});




}
/// @nodoc
class _$TodayExerciseItemCopyWithImpl<$Res>
    implements $TodayExerciseItemCopyWith<$Res> {
  _$TodayExerciseItemCopyWithImpl(this._self, this._then);

  final TodayExerciseItem _self;
  final $Res Function(TodayExerciseItem) _then;

/// Create a copy of TodayExerciseItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? progressId = null,Object? trainingExerciseId = null,Object? exerciseName = null,Object? currentSetNumber = null,Object? totalSets = null,Object? currentWeight = null,Object? currentRepetitions = null,Object? completedSets = null,}) {
  return _then(_self.copyWith(
progressId: null == progressId ? _self.progressId : progressId // ignore: cast_nullable_to_non_nullable
as int,trainingExerciseId: null == trainingExerciseId ? _self.trainingExerciseId : trainingExerciseId // ignore: cast_nullable_to_non_nullable
as int,exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,currentSetNumber: null == currentSetNumber ? _self.currentSetNumber : currentSetNumber // ignore: cast_nullable_to_non_nullable
as int,totalSets: null == totalSets ? _self.totalSets : totalSets // ignore: cast_nullable_to_non_nullable
as int,currentWeight: null == currentWeight ? _self.currentWeight : currentWeight // ignore: cast_nullable_to_non_nullable
as double,currentRepetitions: null == currentRepetitions ? _self.currentRepetitions : currentRepetitions // ignore: cast_nullable_to_non_nullable
as int,completedSets: null == completedSets ? _self.completedSets : completedSets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TodayExerciseItem].
extension TodayExerciseItemPatterns on TodayExerciseItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayExerciseItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayExerciseItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayExerciseItem value)  $default,){
final _that = this;
switch (_that) {
case _TodayExerciseItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayExerciseItem value)?  $default,){
final _that = this;
switch (_that) {
case _TodayExerciseItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int progressId,  int trainingExerciseId,  String exerciseName,  int currentSetNumber,  int totalSets,  double currentWeight,  int currentRepetitions,  int completedSets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayExerciseItem() when $default != null:
return $default(_that.progressId,_that.trainingExerciseId,_that.exerciseName,_that.currentSetNumber,_that.totalSets,_that.currentWeight,_that.currentRepetitions,_that.completedSets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int progressId,  int trainingExerciseId,  String exerciseName,  int currentSetNumber,  int totalSets,  double currentWeight,  int currentRepetitions,  int completedSets)  $default,) {final _that = this;
switch (_that) {
case _TodayExerciseItem():
return $default(_that.progressId,_that.trainingExerciseId,_that.exerciseName,_that.currentSetNumber,_that.totalSets,_that.currentWeight,_that.currentRepetitions,_that.completedSets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int progressId,  int trainingExerciseId,  String exerciseName,  int currentSetNumber,  int totalSets,  double currentWeight,  int currentRepetitions,  int completedSets)?  $default,) {final _that = this;
switch (_that) {
case _TodayExerciseItem() when $default != null:
return $default(_that.progressId,_that.trainingExerciseId,_that.exerciseName,_that.currentSetNumber,_that.totalSets,_that.currentWeight,_that.currentRepetitions,_that.completedSets);case _:
  return null;

}
}

}

/// @nodoc


class _TodayExerciseItem implements TodayExerciseItem {
  const _TodayExerciseItem({required this.progressId, required this.trainingExerciseId, required this.exerciseName, required this.currentSetNumber, required this.totalSets, required this.currentWeight, required this.currentRepetitions, required this.completedSets});
  

@override final  int progressId;
@override final  int trainingExerciseId;
@override final  String exerciseName;
@override final  int currentSetNumber;
@override final  int totalSets;
@override final  double currentWeight;
@override final  int currentRepetitions;
@override final  int completedSets;

/// Create a copy of TodayExerciseItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayExerciseItemCopyWith<_TodayExerciseItem> get copyWith => __$TodayExerciseItemCopyWithImpl<_TodayExerciseItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayExerciseItem&&(identical(other.progressId, progressId) || other.progressId == progressId)&&(identical(other.trainingExerciseId, trainingExerciseId) || other.trainingExerciseId == trainingExerciseId)&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&(identical(other.currentSetNumber, currentSetNumber) || other.currentSetNumber == currentSetNumber)&&(identical(other.totalSets, totalSets) || other.totalSets == totalSets)&&(identical(other.currentWeight, currentWeight) || other.currentWeight == currentWeight)&&(identical(other.currentRepetitions, currentRepetitions) || other.currentRepetitions == currentRepetitions)&&(identical(other.completedSets, completedSets) || other.completedSets == completedSets));
}


@override
int get hashCode => Object.hash(runtimeType,progressId,trainingExerciseId,exerciseName,currentSetNumber,totalSets,currentWeight,currentRepetitions,completedSets);

@override
String toString() {
  return 'TodayExerciseItem(progressId: $progressId, trainingExerciseId: $trainingExerciseId, exerciseName: $exerciseName, currentSetNumber: $currentSetNumber, totalSets: $totalSets, currentWeight: $currentWeight, currentRepetitions: $currentRepetitions, completedSets: $completedSets)';
}


}

/// @nodoc
abstract mixin class _$TodayExerciseItemCopyWith<$Res> implements $TodayExerciseItemCopyWith<$Res> {
  factory _$TodayExerciseItemCopyWith(_TodayExerciseItem value, $Res Function(_TodayExerciseItem) _then) = __$TodayExerciseItemCopyWithImpl;
@override @useResult
$Res call({
 int progressId, int trainingExerciseId, String exerciseName, int currentSetNumber, int totalSets, double currentWeight, int currentRepetitions, int completedSets
});




}
/// @nodoc
class __$TodayExerciseItemCopyWithImpl<$Res>
    implements _$TodayExerciseItemCopyWith<$Res> {
  __$TodayExerciseItemCopyWithImpl(this._self, this._then);

  final _TodayExerciseItem _self;
  final $Res Function(_TodayExerciseItem) _then;

/// Create a copy of TodayExerciseItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? progressId = null,Object? trainingExerciseId = null,Object? exerciseName = null,Object? currentSetNumber = null,Object? totalSets = null,Object? currentWeight = null,Object? currentRepetitions = null,Object? completedSets = null,}) {
  return _then(_TodayExerciseItem(
progressId: null == progressId ? _self.progressId : progressId // ignore: cast_nullable_to_non_nullable
as int,trainingExerciseId: null == trainingExerciseId ? _self.trainingExerciseId : trainingExerciseId // ignore: cast_nullable_to_non_nullable
as int,exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,currentSetNumber: null == currentSetNumber ? _self.currentSetNumber : currentSetNumber // ignore: cast_nullable_to_non_nullable
as int,totalSets: null == totalSets ? _self.totalSets : totalSets // ignore: cast_nullable_to_non_nullable
as int,currentWeight: null == currentWeight ? _self.currentWeight : currentWeight // ignore: cast_nullable_to_non_nullable
as double,currentRepetitions: null == currentRepetitions ? _self.currentRepetitions : currentRepetitions // ignore: cast_nullable_to_non_nullable
as int,completedSets: null == completedSets ? _self.completedSets : completedSets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
