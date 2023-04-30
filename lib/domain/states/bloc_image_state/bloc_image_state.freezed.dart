// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String filename) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String filename)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String filename)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocImageStateLoading value) loading,
    required TResult Function(BlocImageStateLoaded value) loaded,
    required TResult Function(BlocImageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocImageStateLoading value)? loading,
    TResult? Function(BlocImageStateLoaded value)? loaded,
    TResult? Function(BlocImageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocImageStateLoading value)? loading,
    TResult Function(BlocImageStateLoaded value)? loaded,
    TResult Function(BlocImageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocImageStateCopyWith<$Res> {
  factory $BlocImageStateCopyWith(
          BlocImageState value, $Res Function(BlocImageState) then) =
      _$BlocImageStateCopyWithImpl<$Res, BlocImageState>;
}

/// @nodoc
class _$BlocImageStateCopyWithImpl<$Res, $Val extends BlocImageState>
    implements $BlocImageStateCopyWith<$Res> {
  _$BlocImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocImageStateLoadingCopyWith<$Res> {
  factory _$$BlocImageStateLoadingCopyWith(_$BlocImageStateLoading value,
          $Res Function(_$BlocImageStateLoading) then) =
      __$$BlocImageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocImageStateLoadingCopyWithImpl<$Res>
    extends _$BlocImageStateCopyWithImpl<$Res, _$BlocImageStateLoading>
    implements _$$BlocImageStateLoadingCopyWith<$Res> {
  __$$BlocImageStateLoadingCopyWithImpl(_$BlocImageStateLoading _value,
      $Res Function(_$BlocImageStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocImageStateLoading implements BlocImageStateLoading {
  const _$BlocImageStateLoading();

  @override
  String toString() {
    return 'BlocImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocImageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String filename) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String filename)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String filename)? loaded,
    TResult Function()? error,
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
    required TResult Function(BlocImageStateLoading value) loading,
    required TResult Function(BlocImageStateLoaded value) loaded,
    required TResult Function(BlocImageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocImageStateLoading value)? loading,
    TResult? Function(BlocImageStateLoaded value)? loaded,
    TResult? Function(BlocImageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocImageStateLoading value)? loading,
    TResult Function(BlocImageStateLoaded value)? loaded,
    TResult Function(BlocImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocImageStateLoading implements BlocImageState {
  const factory BlocImageStateLoading() = _$BlocImageStateLoading;
}

/// @nodoc
abstract class _$$BlocImageStateLoadedCopyWith<$Res> {
  factory _$$BlocImageStateLoadedCopyWith(_$BlocImageStateLoaded value,
          $Res Function(_$BlocImageStateLoaded) then) =
      __$$BlocImageStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String filename});
}

/// @nodoc
class __$$BlocImageStateLoadedCopyWithImpl<$Res>
    extends _$BlocImageStateCopyWithImpl<$Res, _$BlocImageStateLoaded>
    implements _$$BlocImageStateLoadedCopyWith<$Res> {
  __$$BlocImageStateLoadedCopyWithImpl(_$BlocImageStateLoaded _value,
      $Res Function(_$BlocImageStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
  }) {
    return _then(_$BlocImageStateLoaded(
      null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocImageStateLoaded implements BlocImageStateLoaded {
  const _$BlocImageStateLoaded(this.filename);

  @override
  final String filename;

  @override
  String toString() {
    return 'BlocImageState.loaded(filename: $filename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocImageStateLoaded &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocImageStateLoadedCopyWith<_$BlocImageStateLoaded> get copyWith =>
      __$$BlocImageStateLoadedCopyWithImpl<_$BlocImageStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String filename) loaded,
    required TResult Function() error,
  }) {
    return loaded(filename);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String filename)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(filename);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String filename)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(filename);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocImageStateLoading value) loading,
    required TResult Function(BlocImageStateLoaded value) loaded,
    required TResult Function(BlocImageStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocImageStateLoading value)? loading,
    TResult? Function(BlocImageStateLoaded value)? loaded,
    TResult? Function(BlocImageStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocImageStateLoading value)? loading,
    TResult Function(BlocImageStateLoaded value)? loaded,
    TResult Function(BlocImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocImageStateLoaded implements BlocImageState {
  const factory BlocImageStateLoaded(final String filename) =
      _$BlocImageStateLoaded;

  String get filename;
  @JsonKey(ignore: true)
  _$$BlocImageStateLoadedCopyWith<_$BlocImageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocImageStateErrorCopyWith<$Res> {
  factory _$$BlocImageStateErrorCopyWith(_$BlocImageStateError value,
          $Res Function(_$BlocImageStateError) then) =
      __$$BlocImageStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocImageStateErrorCopyWithImpl<$Res>
    extends _$BlocImageStateCopyWithImpl<$Res, _$BlocImageStateError>
    implements _$$BlocImageStateErrorCopyWith<$Res> {
  __$$BlocImageStateErrorCopyWithImpl(
      _$BlocImageStateError _value, $Res Function(_$BlocImageStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocImageStateError implements BlocImageStateError {
  const _$BlocImageStateError();

  @override
  String toString() {
    return 'BlocImageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocImageStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String filename) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String filename)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String filename)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocImageStateLoading value) loading,
    required TResult Function(BlocImageStateLoaded value) loaded,
    required TResult Function(BlocImageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocImageStateLoading value)? loading,
    TResult? Function(BlocImageStateLoaded value)? loaded,
    TResult? Function(BlocImageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocImageStateLoading value)? loading,
    TResult Function(BlocImageStateLoaded value)? loaded,
    TResult Function(BlocImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocImageStateError implements BlocImageState {
  const factory BlocImageStateError() = _$BlocImageStateError;
}
