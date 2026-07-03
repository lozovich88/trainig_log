// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExerciseFormData {

 String get name; List<SetInput> get sets;
/// Create a copy of ExerciseFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseFormDataCopyWith<ExerciseFormData> get copyWith => _$ExerciseFormDataCopyWithImpl<ExerciseFormData>(this as ExerciseFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseFormData&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.sets, sets));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(sets));

@override
String toString() {
  return 'ExerciseFormData(name: $name, sets: $sets)';
}


}

/// @nodoc
abstract mixin class $ExerciseFormDataCopyWith<$Res>  {
  factory $ExerciseFormDataCopyWith(ExerciseFormData value, $Res Function(ExerciseFormData) _then) = _$ExerciseFormDataCopyWithImpl;
@useResult
$Res call({
 String name, List<SetInput> sets
});




}
/// @nodoc
class _$ExerciseFormDataCopyWithImpl<$Res>
    implements $ExerciseFormDataCopyWith<$Res> {
  _$ExerciseFormDataCopyWithImpl(this._self, this._then);

  final ExerciseFormData _self;
  final $Res Function(ExerciseFormData) _then;

/// Create a copy of ExerciseFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sets = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as List<SetInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseFormData].
extension ExerciseFormDataPatterns on ExerciseFormData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseFormData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseFormData value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseFormData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseFormData value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseFormData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<SetInput> sets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseFormData() when $default != null:
return $default(_that.name,_that.sets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<SetInput> sets)  $default,) {final _that = this;
switch (_that) {
case _ExerciseFormData():
return $default(_that.name,_that.sets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<SetInput> sets)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseFormData() when $default != null:
return $default(_that.name,_that.sets);case _:
  return null;

}
}

}

/// @nodoc


class _ExerciseFormData implements ExerciseFormData {
  const _ExerciseFormData({this.name = '', final  List<SetInput> sets = const <SetInput>[SetInput()]}): _sets = sets;
  

@override@JsonKey() final  String name;
 final  List<SetInput> _sets;
@override@JsonKey() List<SetInput> get sets {
  if (_sets is EqualUnmodifiableListView) return _sets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sets);
}


/// Create a copy of ExerciseFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseFormDataCopyWith<_ExerciseFormData> get copyWith => __$ExerciseFormDataCopyWithImpl<_ExerciseFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseFormData&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._sets, _sets));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_sets));

@override
String toString() {
  return 'ExerciseFormData(name: $name, sets: $sets)';
}


}

/// @nodoc
abstract mixin class _$ExerciseFormDataCopyWith<$Res> implements $ExerciseFormDataCopyWith<$Res> {
  factory _$ExerciseFormDataCopyWith(_ExerciseFormData value, $Res Function(_ExerciseFormData) _then) = __$ExerciseFormDataCopyWithImpl;
@override @useResult
$Res call({
 String name, List<SetInput> sets
});




}
/// @nodoc
class __$ExerciseFormDataCopyWithImpl<$Res>
    implements _$ExerciseFormDataCopyWith<$Res> {
  __$ExerciseFormDataCopyWithImpl(this._self, this._then);

  final _ExerciseFormData _self;
  final $Res Function(_ExerciseFormData) _then;

/// Create a copy of ExerciseFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sets = null,}) {
  return _then(_ExerciseFormData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self._sets : sets // ignore: cast_nullable_to_non_nullable
as List<SetInput>,
  ));
}


}

// dart format on
