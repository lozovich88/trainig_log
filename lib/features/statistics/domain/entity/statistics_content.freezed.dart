// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatisticsContent {

 StatisticsOverview get overview; List<ActivityPoint> get activity; List<TopExerciseItem> get topExercises; List<PersonalRecordItem> get personalRecords; Set<DateTime> get workoutDates;
/// Create a copy of StatisticsContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatisticsContentCopyWith<StatisticsContent> get copyWith => _$StatisticsContentCopyWithImpl<StatisticsContent>(this as StatisticsContent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatisticsContent&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other.activity, activity)&&const DeepCollectionEquality().equals(other.topExercises, topExercises)&&const DeepCollectionEquality().equals(other.personalRecords, personalRecords)&&const DeepCollectionEquality().equals(other.workoutDates, workoutDates));
}


@override
int get hashCode => Object.hash(runtimeType,overview,const DeepCollectionEquality().hash(activity),const DeepCollectionEquality().hash(topExercises),const DeepCollectionEquality().hash(personalRecords),const DeepCollectionEquality().hash(workoutDates));

@override
String toString() {
  return 'StatisticsContent(overview: $overview, activity: $activity, topExercises: $topExercises, personalRecords: $personalRecords, workoutDates: $workoutDates)';
}


}

/// @nodoc
abstract mixin class $StatisticsContentCopyWith<$Res>  {
  factory $StatisticsContentCopyWith(StatisticsContent value, $Res Function(StatisticsContent) _then) = _$StatisticsContentCopyWithImpl;
@useResult
$Res call({
 StatisticsOverview overview, List<ActivityPoint> activity, List<TopExerciseItem> topExercises, List<PersonalRecordItem> personalRecords, Set<DateTime> workoutDates
});


$StatisticsOverviewCopyWith<$Res> get overview;

}
/// @nodoc
class _$StatisticsContentCopyWithImpl<$Res>
    implements $StatisticsContentCopyWith<$Res> {
  _$StatisticsContentCopyWithImpl(this._self, this._then);

  final StatisticsContent _self;
  final $Res Function(StatisticsContent) _then;

/// Create a copy of StatisticsContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overview = null,Object? activity = null,Object? topExercises = null,Object? personalRecords = null,Object? workoutDates = null,}) {
  return _then(_self.copyWith(
overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StatisticsOverview,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as List<ActivityPoint>,topExercises: null == topExercises ? _self.topExercises : topExercises // ignore: cast_nullable_to_non_nullable
as List<TopExerciseItem>,personalRecords: null == personalRecords ? _self.personalRecords : personalRecords // ignore: cast_nullable_to_non_nullable
as List<PersonalRecordItem>,workoutDates: null == workoutDates ? _self.workoutDates : workoutDates // ignore: cast_nullable_to_non_nullable
as Set<DateTime>,
  ));
}
/// Create a copy of StatisticsContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatisticsOverviewCopyWith<$Res> get overview {
  
  return $StatisticsOverviewCopyWith<$Res>(_self.overview, (value) {
    return _then(_self.copyWith(overview: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatisticsContent].
extension StatisticsContentPatterns on StatisticsContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatisticsContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatisticsContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatisticsContent value)  $default,){
final _that = this;
switch (_that) {
case _StatisticsContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatisticsContent value)?  $default,){
final _that = this;
switch (_that) {
case _StatisticsContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StatisticsOverview overview,  List<ActivityPoint> activity,  List<TopExerciseItem> topExercises,  List<PersonalRecordItem> personalRecords,  Set<DateTime> workoutDates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatisticsContent() when $default != null:
return $default(_that.overview,_that.activity,_that.topExercises,_that.personalRecords,_that.workoutDates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StatisticsOverview overview,  List<ActivityPoint> activity,  List<TopExerciseItem> topExercises,  List<PersonalRecordItem> personalRecords,  Set<DateTime> workoutDates)  $default,) {final _that = this;
switch (_that) {
case _StatisticsContent():
return $default(_that.overview,_that.activity,_that.topExercises,_that.personalRecords,_that.workoutDates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StatisticsOverview overview,  List<ActivityPoint> activity,  List<TopExerciseItem> topExercises,  List<PersonalRecordItem> personalRecords,  Set<DateTime> workoutDates)?  $default,) {final _that = this;
switch (_that) {
case _StatisticsContent() when $default != null:
return $default(_that.overview,_that.activity,_that.topExercises,_that.personalRecords,_that.workoutDates);case _:
  return null;

}
}

}

/// @nodoc


class _StatisticsContent implements StatisticsContent {
  const _StatisticsContent({required this.overview, required final  List<ActivityPoint> activity, required final  List<TopExerciseItem> topExercises, required final  List<PersonalRecordItem> personalRecords, required final  Set<DateTime> workoutDates}): _activity = activity,_topExercises = topExercises,_personalRecords = personalRecords,_workoutDates = workoutDates;
  

@override final  StatisticsOverview overview;
 final  List<ActivityPoint> _activity;
@override List<ActivityPoint> get activity {
  if (_activity is EqualUnmodifiableListView) return _activity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activity);
}

 final  List<TopExerciseItem> _topExercises;
@override List<TopExerciseItem> get topExercises {
  if (_topExercises is EqualUnmodifiableListView) return _topExercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topExercises);
}

 final  List<PersonalRecordItem> _personalRecords;
@override List<PersonalRecordItem> get personalRecords {
  if (_personalRecords is EqualUnmodifiableListView) return _personalRecords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personalRecords);
}

 final  Set<DateTime> _workoutDates;
@override Set<DateTime> get workoutDates {
  if (_workoutDates is EqualUnmodifiableSetView) return _workoutDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_workoutDates);
}


/// Create a copy of StatisticsContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatisticsContentCopyWith<_StatisticsContent> get copyWith => __$StatisticsContentCopyWithImpl<_StatisticsContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatisticsContent&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other._activity, _activity)&&const DeepCollectionEquality().equals(other._topExercises, _topExercises)&&const DeepCollectionEquality().equals(other._personalRecords, _personalRecords)&&const DeepCollectionEquality().equals(other._workoutDates, _workoutDates));
}


@override
int get hashCode => Object.hash(runtimeType,overview,const DeepCollectionEquality().hash(_activity),const DeepCollectionEquality().hash(_topExercises),const DeepCollectionEquality().hash(_personalRecords),const DeepCollectionEquality().hash(_workoutDates));

@override
String toString() {
  return 'StatisticsContent(overview: $overview, activity: $activity, topExercises: $topExercises, personalRecords: $personalRecords, workoutDates: $workoutDates)';
}


}

/// @nodoc
abstract mixin class _$StatisticsContentCopyWith<$Res> implements $StatisticsContentCopyWith<$Res> {
  factory _$StatisticsContentCopyWith(_StatisticsContent value, $Res Function(_StatisticsContent) _then) = __$StatisticsContentCopyWithImpl;
@override @useResult
$Res call({
 StatisticsOverview overview, List<ActivityPoint> activity, List<TopExerciseItem> topExercises, List<PersonalRecordItem> personalRecords, Set<DateTime> workoutDates
});


@override $StatisticsOverviewCopyWith<$Res> get overview;

}
/// @nodoc
class __$StatisticsContentCopyWithImpl<$Res>
    implements _$StatisticsContentCopyWith<$Res> {
  __$StatisticsContentCopyWithImpl(this._self, this._then);

  final _StatisticsContent _self;
  final $Res Function(_StatisticsContent) _then;

/// Create a copy of StatisticsContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overview = null,Object? activity = null,Object? topExercises = null,Object? personalRecords = null,Object? workoutDates = null,}) {
  return _then(_StatisticsContent(
overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StatisticsOverview,activity: null == activity ? _self._activity : activity // ignore: cast_nullable_to_non_nullable
as List<ActivityPoint>,topExercises: null == topExercises ? _self._topExercises : topExercises // ignore: cast_nullable_to_non_nullable
as List<TopExerciseItem>,personalRecords: null == personalRecords ? _self._personalRecords : personalRecords // ignore: cast_nullable_to_non_nullable
as List<PersonalRecordItem>,workoutDates: null == workoutDates ? _self._workoutDates : workoutDates // ignore: cast_nullable_to_non_nullable
as Set<DateTime>,
  ));
}

/// Create a copy of StatisticsContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatisticsOverviewCopyWith<$Res> get overview {
  
  return $StatisticsOverviewCopyWith<$Res>(_self.overview, (value) {
    return _then(_self.copyWith(overview: value));
  });
}
}

// dart format on
