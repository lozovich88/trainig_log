// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetInput {

 int? get id; String get weightText; String get repsText;
/// Create a copy of SetInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetInputCopyWith<SetInput> get copyWith => _$SetInputCopyWithImpl<SetInput>(this as SetInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetInput&&(identical(other.id, id) || other.id == id)&&(identical(other.weightText, weightText) || other.weightText == weightText)&&(identical(other.repsText, repsText) || other.repsText == repsText));
}


@override
int get hashCode => Object.hash(runtimeType,id,weightText,repsText);

@override
String toString() {
  return 'SetInput(id: $id, weightText: $weightText, repsText: $repsText)';
}


}

/// @nodoc
abstract mixin class $SetInputCopyWith<$Res>  {
  factory $SetInputCopyWith(SetInput value, $Res Function(SetInput) _then) = _$SetInputCopyWithImpl;
@useResult
$Res call({
 int? id, String weightText, String repsText
});




}
/// @nodoc
class _$SetInputCopyWithImpl<$Res>
    implements $SetInputCopyWith<$Res> {
  _$SetInputCopyWithImpl(this._self, this._then);

  final SetInput _self;
  final $Res Function(SetInput) _then;

/// Create a copy of SetInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? weightText = null,Object? repsText = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,weightText: null == weightText ? _self.weightText : weightText // ignore: cast_nullable_to_non_nullable
as String,repsText: null == repsText ? _self.repsText : repsText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SetInput].
extension SetInputPatterns on SetInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetInput value)  $default,){
final _that = this;
switch (_that) {
case _SetInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetInput value)?  $default,){
final _that = this;
switch (_that) {
case _SetInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String weightText,  String repsText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetInput() when $default != null:
return $default(_that.id,_that.weightText,_that.repsText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String weightText,  String repsText)  $default,) {final _that = this;
switch (_that) {
case _SetInput():
return $default(_that.id,_that.weightText,_that.repsText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String weightText,  String repsText)?  $default,) {final _that = this;
switch (_that) {
case _SetInput() when $default != null:
return $default(_that.id,_that.weightText,_that.repsText);case _:
  return null;

}
}

}

/// @nodoc


class _SetInput implements SetInput {
  const _SetInput({this.id, this.weightText = '', this.repsText = ''});
  

@override final  int? id;
@override@JsonKey() final  String weightText;
@override@JsonKey() final  String repsText;

/// Create a copy of SetInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetInputCopyWith<_SetInput> get copyWith => __$SetInputCopyWithImpl<_SetInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetInput&&(identical(other.id, id) || other.id == id)&&(identical(other.weightText, weightText) || other.weightText == weightText)&&(identical(other.repsText, repsText) || other.repsText == repsText));
}


@override
int get hashCode => Object.hash(runtimeType,id,weightText,repsText);

@override
String toString() {
  return 'SetInput(id: $id, weightText: $weightText, repsText: $repsText)';
}


}

/// @nodoc
abstract mixin class _$SetInputCopyWith<$Res> implements $SetInputCopyWith<$Res> {
  factory _$SetInputCopyWith(_SetInput value, $Res Function(_SetInput) _then) = __$SetInputCopyWithImpl;
@override @useResult
$Res call({
 int? id, String weightText, String repsText
});




}
/// @nodoc
class __$SetInputCopyWithImpl<$Res>
    implements _$SetInputCopyWith<$Res> {
  __$SetInputCopyWithImpl(this._self, this._then);

  final _SetInput _self;
  final $Res Function(_SetInput) _then;

/// Create a copy of SetInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? weightText = null,Object? repsText = null,}) {
  return _then(_SetInput(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,weightText: null == weightText ? _self.weightText : weightText // ignore: cast_nullable_to_non_nullable
as String,repsText: null == repsText ? _self.repsText : repsText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
