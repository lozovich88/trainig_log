// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UiState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UiState<$T>()';
}


}

/// @nodoc
class $UiStateCopyWith<T,$Res>  {
$UiStateCopyWith(UiState<T> _, $Res Function(UiState<T>) __);
}


/// Adds pattern-matching-related methods to [UiState].
extension UiStatePatterns<T> on UiState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UiLoading<T> value)?  loading,TResult Function( UiContent<T> value)?  content,TResult Function( UiEmpty<T> value)?  empty,TResult Function( UiError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UiLoading() when loading != null:
return loading(_that);case UiContent() when content != null:
return content(_that);case UiEmpty() when empty != null:
return empty(_that);case UiError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UiLoading<T> value)  loading,required TResult Function( UiContent<T> value)  content,required TResult Function( UiEmpty<T> value)  empty,required TResult Function( UiError<T> value)  error,}){
final _that = this;
switch (_that) {
case UiLoading():
return loading(_that);case UiContent():
return content(_that);case UiEmpty():
return empty(_that);case UiError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UiLoading<T> value)?  loading,TResult? Function( UiContent<T> value)?  content,TResult? Function( UiEmpty<T> value)?  empty,TResult? Function( UiError<T> value)?  error,}){
final _that = this;
switch (_that) {
case UiLoading() when loading != null:
return loading(_that);case UiContent() when content != null:
return content(_that);case UiEmpty() when empty != null:
return empty(_that);case UiError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( T data)?  content,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UiLoading() when loading != null:
return loading();case UiContent() when content != null:
return content(_that.data);case UiEmpty() when empty != null:
return empty();case UiError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( T data)  content,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case UiLoading():
return loading();case UiContent():
return content(_that.data);case UiEmpty():
return empty();case UiError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( T data)?  content,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case UiLoading() when loading != null:
return loading();case UiContent() when content != null:
return content(_that.data);case UiEmpty() when empty != null:
return empty();case UiError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UiLoading<T> implements UiState<T> {
  const UiLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UiState<$T>.loading()';
}


}




/// @nodoc


class UiContent<T> implements UiState<T> {
  const UiContent(this.data);
  

 final  T data;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UiContentCopyWith<T, UiContent<T>> get copyWith => _$UiContentCopyWithImpl<T, UiContent<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiContent<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UiState<$T>.content(data: $data)';
}


}

/// @nodoc
abstract mixin class $UiContentCopyWith<T,$Res> implements $UiStateCopyWith<T, $Res> {
  factory $UiContentCopyWith(UiContent<T> value, $Res Function(UiContent<T>) _then) = _$UiContentCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$UiContentCopyWithImpl<T,$Res>
    implements $UiContentCopyWith<T, $Res> {
  _$UiContentCopyWithImpl(this._self, this._then);

  final UiContent<T> _self;
  final $Res Function(UiContent<T>) _then;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(UiContent<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class UiEmpty<T> implements UiState<T> {
  const UiEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiEmpty<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UiState<$T>.empty()';
}


}




/// @nodoc


class UiError<T> implements UiState<T> {
  const UiError(this.message);
  

 final  String message;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UiErrorCopyWith<T, UiError<T>> get copyWith => _$UiErrorCopyWithImpl<T, UiError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiError<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UiState<$T>.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UiErrorCopyWith<T,$Res> implements $UiStateCopyWith<T, $Res> {
  factory $UiErrorCopyWith(UiError<T> value, $Res Function(UiError<T>) _then) = _$UiErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UiErrorCopyWithImpl<T,$Res>
    implements $UiErrorCopyWith<T, $Res> {
  _$UiErrorCopyWithImpl(this._self, this._then);

  final UiError<T> _self;
  final $Res Function(UiError<T>) _then;

/// Create a copy of UiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UiError<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
