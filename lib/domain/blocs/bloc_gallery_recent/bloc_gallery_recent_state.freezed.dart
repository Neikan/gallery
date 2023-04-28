// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_gallery_recent_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocGalleryRecentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppPhotos photos) loaded,
    required TResult Function(String description) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryRecentStateLoading value) loading,
    required TResult Function(BlocGalleryRecentStateLoaded value) loaded,
    required TResult Function(BlocGalleryRecentStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryRecentStateLoading value)? loading,
    TResult? Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult? Function(BlocGalleryRecentStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryRecentStateLoading value)? loading,
    TResult Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult Function(BlocGalleryRecentStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocGalleryRecentStateCopyWith<$Res> {
  factory $BlocGalleryRecentStateCopyWith(BlocGalleryRecentState value,
          $Res Function(BlocGalleryRecentState) then) =
      _$BlocGalleryRecentStateCopyWithImpl<$Res, BlocGalleryRecentState>;
}

/// @nodoc
class _$BlocGalleryRecentStateCopyWithImpl<$Res,
        $Val extends BlocGalleryRecentState>
    implements $BlocGalleryRecentStateCopyWith<$Res> {
  _$BlocGalleryRecentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocGalleryRecentStateLoadingCopyWith<$Res> {
  factory _$$BlocGalleryRecentStateLoadingCopyWith(
          _$BlocGalleryRecentStateLoading value,
          $Res Function(_$BlocGalleryRecentStateLoading) then) =
      __$$BlocGalleryRecentStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocGalleryRecentStateLoadingCopyWithImpl<$Res>
    extends _$BlocGalleryRecentStateCopyWithImpl<$Res,
        _$BlocGalleryRecentStateLoading>
    implements _$$BlocGalleryRecentStateLoadingCopyWith<$Res> {
  __$$BlocGalleryRecentStateLoadingCopyWithImpl(
      _$BlocGalleryRecentStateLoading _value,
      $Res Function(_$BlocGalleryRecentStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocGalleryRecentStateLoading implements BlocGalleryRecentStateLoading {
  const _$BlocGalleryRecentStateLoading();

  @override
  String toString() {
    return 'BlocGalleryRecentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryRecentStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppPhotos photos) loaded,
    required TResult Function(String description) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? error,
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
    required TResult Function(BlocGalleryRecentStateLoading value) loading,
    required TResult Function(BlocGalleryRecentStateLoaded value) loaded,
    required TResult Function(BlocGalleryRecentStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryRecentStateLoading value)? loading,
    TResult? Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult? Function(BlocGalleryRecentStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryRecentStateLoading value)? loading,
    TResult Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult Function(BlocGalleryRecentStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryRecentStateLoading implements BlocGalleryRecentState {
  const factory BlocGalleryRecentStateLoading() =
      _$BlocGalleryRecentStateLoading;
}

/// @nodoc
abstract class _$$BlocGalleryRecentStateLoadedCopyWith<$Res> {
  factory _$$BlocGalleryRecentStateLoadedCopyWith(
          _$BlocGalleryRecentStateLoaded value,
          $Res Function(_$BlocGalleryRecentStateLoaded) then) =
      __$$BlocGalleryRecentStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPhotos photos});

  $AppPhotosCopyWith<$Res> get photos;
}

/// @nodoc
class __$$BlocGalleryRecentStateLoadedCopyWithImpl<$Res>
    extends _$BlocGalleryRecentStateCopyWithImpl<$Res,
        _$BlocGalleryRecentStateLoaded>
    implements _$$BlocGalleryRecentStateLoadedCopyWith<$Res> {
  __$$BlocGalleryRecentStateLoadedCopyWithImpl(
      _$BlocGalleryRecentStateLoaded _value,
      $Res Function(_$BlocGalleryRecentStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$BlocGalleryRecentStateLoaded(
      null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as AppPhotos,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppPhotosCopyWith<$Res> get photos {
    return $AppPhotosCopyWith<$Res>(_value.photos, (value) {
      return _then(_value.copyWith(photos: value));
    });
  }
}

/// @nodoc

class _$BlocGalleryRecentStateLoaded implements BlocGalleryRecentStateLoaded {
  const _$BlocGalleryRecentStateLoaded(this.photos);

  @override
  final AppPhotos photos;

  @override
  String toString() {
    return 'BlocGalleryRecentState.loaded(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryRecentStateLoaded &&
            (identical(other.photos, photos) || other.photos == photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryRecentStateLoadedCopyWith<_$BlocGalleryRecentStateLoaded>
      get copyWith => __$$BlocGalleryRecentStateLoadedCopyWithImpl<
          _$BlocGalleryRecentStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppPhotos photos) loaded,
    required TResult Function(String description) error,
  }) {
    return loaded(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? error,
  }) {
    return loaded?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? error,
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
    required TResult Function(BlocGalleryRecentStateLoading value) loading,
    required TResult Function(BlocGalleryRecentStateLoaded value) loaded,
    required TResult Function(BlocGalleryRecentStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryRecentStateLoading value)? loading,
    TResult? Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult? Function(BlocGalleryRecentStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryRecentStateLoading value)? loading,
    TResult Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult Function(BlocGalleryRecentStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryRecentStateLoaded implements BlocGalleryRecentState {
  const factory BlocGalleryRecentStateLoaded(final AppPhotos photos) =
      _$BlocGalleryRecentStateLoaded;

  AppPhotos get photos;
  @JsonKey(ignore: true)
  _$$BlocGalleryRecentStateLoadedCopyWith<_$BlocGalleryRecentStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocGalleryRecentStateErrorCopyWith<$Res> {
  factory _$$BlocGalleryRecentStateErrorCopyWith(
          _$BlocGalleryRecentStateError value,
          $Res Function(_$BlocGalleryRecentStateError) then) =
      __$$BlocGalleryRecentStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$BlocGalleryRecentStateErrorCopyWithImpl<$Res>
    extends _$BlocGalleryRecentStateCopyWithImpl<$Res,
        _$BlocGalleryRecentStateError>
    implements _$$BlocGalleryRecentStateErrorCopyWith<$Res> {
  __$$BlocGalleryRecentStateErrorCopyWithImpl(
      _$BlocGalleryRecentStateError _value,
      $Res Function(_$BlocGalleryRecentStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$BlocGalleryRecentStateError(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocGalleryRecentStateError implements BlocGalleryRecentStateError {
  const _$BlocGalleryRecentStateError(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'BlocGalleryRecentState.error(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryRecentStateError &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryRecentStateErrorCopyWith<_$BlocGalleryRecentStateError>
      get copyWith => __$$BlocGalleryRecentStateErrorCopyWithImpl<
          _$BlocGalleryRecentStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppPhotos photos) loaded,
    required TResult Function(String description) error,
  }) {
    return error(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? error,
  }) {
    return error?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryRecentStateLoading value) loading,
    required TResult Function(BlocGalleryRecentStateLoaded value) loaded,
    required TResult Function(BlocGalleryRecentStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryRecentStateLoading value)? loading,
    TResult? Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult? Function(BlocGalleryRecentStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryRecentStateLoading value)? loading,
    TResult Function(BlocGalleryRecentStateLoaded value)? loaded,
    TResult Function(BlocGalleryRecentStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryRecentStateError implements BlocGalleryRecentState {
  const factory BlocGalleryRecentStateError(final String description) =
      _$BlocGalleryRecentStateError;

  String get description;
  @JsonKey(ignore: true)
  _$$BlocGalleryRecentStateErrorCopyWith<_$BlocGalleryRecentStateError>
      get copyWith => throw _privateConstructorUsedError;
}
