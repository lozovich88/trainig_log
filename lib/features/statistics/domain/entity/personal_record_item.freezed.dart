// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_record_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonalRecordItem {

 String get exerciseName; double get maxWeight; double get maxVolume;
/// Create a copy of PersonalRecordItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalRecordItemCopyWith<PersonalRecordItem> get copyWith => _$PersonalRecordItemCopyWithImpl<PersonalRecordItem>(this as PersonalRecordItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalRecordItem&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&(identical(other.maxWeight, maxWeight) || other.maxWeight == maxWeight)&&(identical(other.maxVolume, maxVolume) || other.maxVolume == maxVolume));
}


@override
int get hashCode => Object.hash(runtimeType,exerciseName,maxWeight,maxVolume);

@override
String toString() {
  return 'PersonalRecordItem(exerciseName: $exerciseName, maxWeight: $maxWeight, maxVolume: $maxVolume)';
}


}

/// @nodoc
abstract mixin class $PersonalRecordItemCopyWith<$Res>  {
  factory $PersonalRecordItemCopyWith(PersonalRecordItem value, $Res Function(PersonalRecordItem) _then) = _$PersonalRecordItemCopyWithImpl;
@useResult
$Res call({
 String exerciseName, double maxWeight, double maxVolume
});




}
/// @nodoc
class _$PersonalRecordItemCopyWithImpl<$Res>
    implements $PersonalRecordItemCopyWith<$Res> {
  _$PersonalRecordItemCopyWithImpl(this._self, this._then);

  final PersonalRecordItem _self;
  final $Res Function(PersonalRecordItem) _then;

/// Create a copy of PersonalRecordItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exerciseName = null,Object? maxWeight = null,Object? maxVolume = null,}) {
  return _then(_self.copyWith(
exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,maxWeight: null == maxWeight ? _self.maxWeight : maxWeight // ignore: cast_nullable_to_non_nullable
as double,maxVolume: null == maxVolume ? _self.maxVolume : maxVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalRecordItem].
extension PersonalRecordItemPatterns on PersonalRecordItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalRecordItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalRecordItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalRecordItem value)  $default,){
final _that = this;
switch (_that) {
case _PersonalRecordItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalRecordItem value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalRecordItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String exerciseName,  double maxWeight,  double maxVolume)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalRecordItem() when $default != null:
return $default(_that.exerciseName,_that.maxWeight,_that.maxVolume);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String exerciseName,  double maxWeight,  double maxVolume)  $default,) {final _that = this;
switch (_that) {
case _PersonalRecordItem():
return $default(_that.exerciseName,_that.maxWeight,_that.maxVolume);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String exerciseName,  double maxWeight,  double maxVolume)?  $default,) {final _that = this;
switch (_that) {
case _PersonalRecordItem() when $default != null:
return $default(_that.exerciseName,_that.maxWeight,_that.maxVolume);case _:
  return null;

}
}

}

/// @nodoc


class _PersonalRecordItem implements PersonalRecordItem {
  const _PersonalRecordItem({required this.exerciseName, required this.maxWeight, required this.maxVolume});
  

@override final  String exerciseName;
@override final  double maxWeight;
@override final  double maxVolume;

/// Create a copy of PersonalRecordItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalRecordItemCopyWith<_PersonalRecordItem> get copyWith => __$PersonalRecordItemCopyWithImpl<_PersonalRecordItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalRecordItem&&(identical(other.exerciseName, exerciseName) || other.exerciseName == exerciseName)&&(identical(other.maxWeight, maxWeight) || other.maxWeight == maxWeight)&&(identical(other.maxVolume, maxVolume) || other.maxVolume == maxVolume));
}


@override
int get hashCode => Object.hash(runtimeType,exerciseName,maxWeight,maxVolume);

@override
String toString() {
  return 'PersonalRecordItem(exerciseName: $exerciseName, maxWeight: $maxWeight, maxVolume: $maxVolume)';
}


}

/// @nodoc
abstract mixin class _$PersonalRecordItemCopyWith<$Res> implements $PersonalRecordItemCopyWith<$Res> {
  factory _$PersonalRecordItemCopyWith(_PersonalRecordItem value, $Res Function(_PersonalRecordItem) _then) = __$PersonalRecordItemCopyWithImpl;
@override @useResult
$Res call({
 String exerciseName, double maxWeight, double maxVolume
});




}
/// @nodoc
class __$PersonalRecordItemCopyWithImpl<$Res>
    implements _$PersonalRecordItemCopyWith<$Res> {
  __$PersonalRecordItemCopyWithImpl(this._self, this._then);

  final _PersonalRecordItem _self;
  final $Res Function(_PersonalRecordItem) _then;

/// Create a copy of PersonalRecordItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exerciseName = null,Object? maxWeight = null,Object? maxVolume = null,}) {
  return _then(_PersonalRecordItem(
exerciseName: null == exerciseName ? _self.exerciseName : exerciseName // ignore: cast_nullable_to_non_nullable
as String,maxWeight: null == maxWeight ? _self.maxWeight : maxWeight // ignore: cast_nullable_to_non_nullable
as double,maxVolume: null == maxVolume ? _self.maxVolume : maxVolume // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
