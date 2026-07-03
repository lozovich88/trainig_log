// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeContent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeContent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeContent()';
}


}

/// @nodoc
class $HomeContentCopyWith<$Res>  {
$HomeContentCopyWith(HomeContent _, $Res Function(HomeContent) __);
}


/// Adds pattern-matching-related methods to [HomeContent].
extension HomeContentPatterns on HomeContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeNoPlan value)?  noPlan,TResult Function( HomeRestDay value)?  restDay,TResult Function( HomeWorkout value)?  workout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeNoPlan() when noPlan != null:
return noPlan(_that);case HomeRestDay() when restDay != null:
return restDay(_that);case HomeWorkout() when workout != null:
return workout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeNoPlan value)  noPlan,required TResult Function( HomeRestDay value)  restDay,required TResult Function( HomeWorkout value)  workout,}){
final _that = this;
switch (_that) {
case HomeNoPlan():
return noPlan(_that);case HomeRestDay():
return restDay(_that);case HomeWorkout():
return workout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeNoPlan value)?  noPlan,TResult? Function( HomeRestDay value)?  restDay,TResult? Function( HomeWorkout value)?  workout,}){
final _that = this;
switch (_that) {
case HomeNoPlan() when noPlan != null:
return noPlan(_that);case HomeRestDay() when restDay != null:
return restDay(_that);case HomeWorkout() when workout != null:
return workout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noPlan,TResult Function()?  restDay,TResult Function( int liftedWeightToday,  List<TodayExerciseItem> exercises)?  workout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeNoPlan() when noPlan != null:
return noPlan();case HomeRestDay() when restDay != null:
return restDay();case HomeWorkout() when workout != null:
return workout(_that.liftedWeightToday,_that.exercises);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noPlan,required TResult Function()  restDay,required TResult Function( int liftedWeightToday,  List<TodayExerciseItem> exercises)  workout,}) {final _that = this;
switch (_that) {
case HomeNoPlan():
return noPlan();case HomeRestDay():
return restDay();case HomeWorkout():
return workout(_that.liftedWeightToday,_that.exercises);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noPlan,TResult? Function()?  restDay,TResult? Function( int liftedWeightToday,  List<TodayExerciseItem> exercises)?  workout,}) {final _that = this;
switch (_that) {
case HomeNoPlan() when noPlan != null:
return noPlan();case HomeRestDay() when restDay != null:
return restDay();case HomeWorkout() when workout != null:
return workout(_that.liftedWeightToday,_that.exercises);case _:
  return null;

}
}

}

/// @nodoc


class HomeNoPlan implements HomeContent {
  const HomeNoPlan();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeNoPlan);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeContent.noPlan()';
}


}




/// @nodoc


class HomeRestDay implements HomeContent {
  const HomeRestDay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRestDay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeContent.restDay()';
}


}




/// @nodoc


class HomeWorkout implements HomeContent {
  const HomeWorkout({required this.liftedWeightToday, required final  List<TodayExerciseItem> exercises}): _exercises = exercises;
  

 final  int liftedWeightToday;
 final  List<TodayExerciseItem> _exercises;
 List<TodayExerciseItem> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}


/// Create a copy of HomeContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeWorkoutCopyWith<HomeWorkout> get copyWith => _$HomeWorkoutCopyWithImpl<HomeWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeWorkout&&(identical(other.liftedWeightToday, liftedWeightToday) || other.liftedWeightToday == liftedWeightToday)&&const DeepCollectionEquality().equals(other._exercises, _exercises));
}


@override
int get hashCode => Object.hash(runtimeType,liftedWeightToday,const DeepCollectionEquality().hash(_exercises));

@override
String toString() {
  return 'HomeContent.workout(liftedWeightToday: $liftedWeightToday, exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class $HomeWorkoutCopyWith<$Res> implements $HomeContentCopyWith<$Res> {
  factory $HomeWorkoutCopyWith(HomeWorkout value, $Res Function(HomeWorkout) _then) = _$HomeWorkoutCopyWithImpl;
@useResult
$Res call({
 int liftedWeightToday, List<TodayExerciseItem> exercises
});




}
/// @nodoc
class _$HomeWorkoutCopyWithImpl<$Res>
    implements $HomeWorkoutCopyWith<$Res> {
  _$HomeWorkoutCopyWithImpl(this._self, this._then);

  final HomeWorkout _self;
  final $Res Function(HomeWorkout) _then;

/// Create a copy of HomeContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? liftedWeightToday = null,Object? exercises = null,}) {
  return _then(HomeWorkout(
liftedWeightToday: null == liftedWeightToday ? _self.liftedWeightToday : liftedWeightToday // ignore: cast_nullable_to_non_nullable
as int,exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<TodayExerciseItem>,
  ));
}


}

// dart format on
