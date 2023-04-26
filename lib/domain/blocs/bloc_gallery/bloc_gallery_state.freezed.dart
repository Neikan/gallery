// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_gallery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocGalleryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiPhoto> photos) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiPhoto> photos)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiPhoto> photos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryStateLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryStateLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryStateLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocGalleryStateCopyWith<$Res> {
  factory $BlocGalleryStateCopyWith(
          BlocGalleryState value, $Res Function(BlocGalleryState) then) =
      _$BlocGalleryStateCopyWithImpl<$Res, BlocGalleryState>;
}

/// @nodoc
class _$BlocGalleryStateCopyWithImpl<$Res, $Val extends BlocGalleryState>
    implements $BlocGalleryStateCopyWith<$Res> {
  _$BlocGalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocGalleryStateLoadingCopyWith<$Res> {
  factory _$$BlocGalleryStateLoadingCopyWith(_$BlocGalleryStateLoading value,
          $Res Function(_$BlocGalleryStateLoading) then) =
      __$$BlocGalleryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocGalleryStateLoadingCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$BlocGalleryStateLoading>
    implements _$$BlocGalleryStateLoadingCopyWith<$Res> {
  __$$BlocGalleryStateLoadingCopyWithImpl(_$BlocGalleryStateLoading _value,
      $Res Function(_$BlocGalleryStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocGalleryStateLoading implements BlocGalleryStateLoading {
  const _$BlocGalleryStateLoading();

  @override
  String toString() {
    return 'BlocGalleryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiPhoto> photos) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiPhoto> photos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiPhoto> photos)? loaded,
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
    required TResult Function(BlocGalleryStateLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryStateLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryStateLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryStateLoading implements BlocGalleryState {
  const factory BlocGalleryStateLoading() = _$BlocGalleryStateLoading;
}

/// @nodoc
abstract class _$$BlocGalleryStateLoadedCopyWith<$Res> {
  factory _$$BlocGalleryStateLoadedCopyWith(_$BlocGalleryStateLoaded value,
          $Res Function(_$BlocGalleryStateLoaded) then) =
      __$$BlocGalleryStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ApiPhoto> photos});
}

/// @nodoc
class __$$BlocGalleryStateLoadedCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$BlocGalleryStateLoaded>
    implements _$$BlocGalleryStateLoadedCopyWith<$Res> {
  __$$BlocGalleryStateLoadedCopyWithImpl(_$BlocGalleryStateLoaded _value,
      $Res Function(_$BlocGalleryStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$BlocGalleryStateLoaded(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ApiPhoto>,
    ));
  }
}

/// @nodoc

class _$BlocGalleryStateLoaded implements BlocGalleryStateLoaded {
  const _$BlocGalleryStateLoaded(final List<ApiPhoto> photos)
      : _photos = photos;

  final List<ApiPhoto> _photos;
  @override
  List<ApiPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'BlocGalleryState.loaded(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateLoaded &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryStateLoadedCopyWith<_$BlocGalleryStateLoaded> get copyWith =>
      __$$BlocGalleryStateLoadedCopyWithImpl<_$BlocGalleryStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiPhoto> photos) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiPhoto> photos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiPhoto> photos)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryStateLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryStateLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryStateLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryStateLoaded implements BlocGalleryState {
  const factory BlocGalleryStateLoaded(final List<ApiPhoto> photos) =
      _$BlocGalleryStateLoaded;

  List<ApiPhoto> get photos;
  @JsonKey(ignore: true)
  _$$BlocGalleryStateLoadedCopyWith<_$BlocGalleryStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocGalleryStateErrorCopyWith<$Res> {
  factory _$$BlocGalleryStateErrorCopyWith(_$BlocGalleryStateError value,
          $Res Function(_$BlocGalleryStateError) then) =
      __$$BlocGalleryStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BlocGalleryStateErrorCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$BlocGalleryStateError>
    implements _$$BlocGalleryStateErrorCopyWith<$Res> {
  __$$BlocGalleryStateErrorCopyWithImpl(_$BlocGalleryStateError _value,
      $Res Function(_$BlocGalleryStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BlocGalleryStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocGalleryStateError implements BlocGalleryStateError {
  const _$BlocGalleryStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BlocGalleryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryStateErrorCopyWith<_$BlocGalleryStateError> get copyWith =>
      __$$BlocGalleryStateErrorCopyWithImpl<_$BlocGalleryStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ApiPhoto> photos) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ApiPhoto> photos)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ApiPhoto> photos)? loaded,
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
    required TResult Function(BlocGalleryStateLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryStateLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryStateLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryStateError implements BlocGalleryState {
  const factory BlocGalleryStateError(final String message) =
      _$BlocGalleryStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$BlocGalleryStateErrorCopyWith<_$BlocGalleryStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
