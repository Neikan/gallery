// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_photo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocPhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiPhoto photo) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiPhoto photo)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiPhoto photo)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPhotoStateLoading value) loading,
    required TResult Function(BlocPhotoStateLoaded value) loaded,
    required TResult Function(BlocPhotoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPhotoStateLoading value)? loading,
    TResult? Function(BlocPhotoStateLoaded value)? loaded,
    TResult? Function(BlocPhotoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPhotoStateLoading value)? loading,
    TResult Function(BlocPhotoStateLoaded value)? loaded,
    TResult Function(BlocPhotoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocPhotoStateCopyWith<$Res> {
  factory $BlocPhotoStateCopyWith(
          BlocPhotoState value, $Res Function(BlocPhotoState) then) =
      _$BlocPhotoStateCopyWithImpl<$Res, BlocPhotoState>;
}

/// @nodoc
class _$BlocPhotoStateCopyWithImpl<$Res, $Val extends BlocPhotoState>
    implements $BlocPhotoStateCopyWith<$Res> {
  _$BlocPhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocPhotoStateLoadingCopyWith<$Res> {
  factory _$$BlocPhotoStateLoadingCopyWith(_$BlocPhotoStateLoading value,
          $Res Function(_$BlocPhotoStateLoading) then) =
      __$$BlocPhotoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocPhotoStateLoadingCopyWithImpl<$Res>
    extends _$BlocPhotoStateCopyWithImpl<$Res, _$BlocPhotoStateLoading>
    implements _$$BlocPhotoStateLoadingCopyWith<$Res> {
  __$$BlocPhotoStateLoadingCopyWithImpl(_$BlocPhotoStateLoading _value,
      $Res Function(_$BlocPhotoStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocPhotoStateLoading implements BlocPhotoStateLoading {
  const _$BlocPhotoStateLoading();

  @override
  String toString() {
    return 'BlocPhotoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocPhotoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiPhoto photo) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiPhoto photo)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiPhoto photo)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPhotoStateLoading value) loading,
    required TResult Function(BlocPhotoStateLoaded value) loaded,
    required TResult Function(BlocPhotoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPhotoStateLoading value)? loading,
    TResult? Function(BlocPhotoStateLoaded value)? loaded,
    TResult? Function(BlocPhotoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPhotoStateLoading value)? loading,
    TResult Function(BlocPhotoStateLoaded value)? loaded,
    TResult Function(BlocPhotoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocPhotoStateLoading implements BlocPhotoState {
  const factory BlocPhotoStateLoading() = _$BlocPhotoStateLoading;
}

/// @nodoc
abstract class _$$BlocPhotoStateLoadedCopyWith<$Res> {
  factory _$$BlocPhotoStateLoadedCopyWith(_$BlocPhotoStateLoaded value,
          $Res Function(_$BlocPhotoStateLoaded) then) =
      __$$BlocPhotoStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiPhoto photo});
}

/// @nodoc
class __$$BlocPhotoStateLoadedCopyWithImpl<$Res>
    extends _$BlocPhotoStateCopyWithImpl<$Res, _$BlocPhotoStateLoaded>
    implements _$$BlocPhotoStateLoadedCopyWith<$Res> {
  __$$BlocPhotoStateLoadedCopyWithImpl(_$BlocPhotoStateLoaded _value,
      $Res Function(_$BlocPhotoStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$BlocPhotoStateLoaded(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ApiPhoto,
    ));
  }
}

/// @nodoc

class _$BlocPhotoStateLoaded implements BlocPhotoStateLoaded {
  const _$BlocPhotoStateLoaded(this.photo);

  @override
  final ApiPhoto photo;

  @override
  String toString() {
    return 'BlocPhotoState.loaded(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocPhotoStateLoaded &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocPhotoStateLoadedCopyWith<_$BlocPhotoStateLoaded> get copyWith =>
      __$$BlocPhotoStateLoadedCopyWithImpl<_$BlocPhotoStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiPhoto photo) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiPhoto photo)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiPhoto photo)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPhotoStateLoading value) loading,
    required TResult Function(BlocPhotoStateLoaded value) loaded,
    required TResult Function(BlocPhotoStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPhotoStateLoading value)? loading,
    TResult? Function(BlocPhotoStateLoaded value)? loaded,
    TResult? Function(BlocPhotoStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPhotoStateLoading value)? loading,
    TResult Function(BlocPhotoStateLoaded value)? loaded,
    TResult Function(BlocPhotoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocPhotoStateLoaded implements BlocPhotoState {
  const factory BlocPhotoStateLoaded(final ApiPhoto photo) =
      _$BlocPhotoStateLoaded;

  ApiPhoto get photo;
  @JsonKey(ignore: true)
  _$$BlocPhotoStateLoadedCopyWith<_$BlocPhotoStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocPhotoStateErrorCopyWith<$Res> {
  factory _$$BlocPhotoStateErrorCopyWith(_$BlocPhotoStateError value,
          $Res Function(_$BlocPhotoStateError) then) =
      __$$BlocPhotoStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlocPhotoStateErrorCopyWithImpl<$Res>
    extends _$BlocPhotoStateCopyWithImpl<$Res, _$BlocPhotoStateError>
    implements _$$BlocPhotoStateErrorCopyWith<$Res> {
  __$$BlocPhotoStateErrorCopyWithImpl(
      _$BlocPhotoStateError _value, $Res Function(_$BlocPhotoStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlocPhotoStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocPhotoStateError implements BlocPhotoStateError {
  const _$BlocPhotoStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlocPhotoState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocPhotoStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocPhotoStateErrorCopyWith<_$BlocPhotoStateError> get copyWith =>
      __$$BlocPhotoStateErrorCopyWithImpl<_$BlocPhotoStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ApiPhoto photo) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ApiPhoto photo)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ApiPhoto photo)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocPhotoStateLoading value) loading,
    required TResult Function(BlocPhotoStateLoaded value) loaded,
    required TResult Function(BlocPhotoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocPhotoStateLoading value)? loading,
    TResult? Function(BlocPhotoStateLoaded value)? loaded,
    TResult? Function(BlocPhotoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocPhotoStateLoading value)? loading,
    TResult Function(BlocPhotoStateLoaded value)? loaded,
    TResult Function(BlocPhotoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocPhotoStateError implements BlocPhotoState {
  const factory BlocPhotoStateError(final String message) =
      _$BlocPhotoStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$BlocPhotoStateErrorCopyWith<_$BlocPhotoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
