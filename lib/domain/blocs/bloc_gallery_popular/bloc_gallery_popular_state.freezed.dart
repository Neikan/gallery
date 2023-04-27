// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_gallery_popular_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocGalleryPopularState {
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
    required TResult Function(BlocGalleryPopularStateLoading value) loading,
    required TResult Function(BlocGalleryPopularStateLoaded value) loaded,
    required TResult Function(BlocGalleryPopularStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryPopularStateLoading value)? loading,
    TResult? Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult? Function(BlocGalleryPopularStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryPopularStateLoading value)? loading,
    TResult Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult Function(BlocGalleryPopularStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocGalleryPopularStateCopyWith<$Res> {
  factory $BlocGalleryPopularStateCopyWith(BlocGalleryPopularState value,
          $Res Function(BlocGalleryPopularState) then) =
      _$BlocGalleryPopularStateCopyWithImpl<$Res, BlocGalleryPopularState>;
}

/// @nodoc
class _$BlocGalleryPopularStateCopyWithImpl<$Res,
        $Val extends BlocGalleryPopularState>
    implements $BlocGalleryPopularStateCopyWith<$Res> {
  _$BlocGalleryPopularStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocGalleryPopularStateLoadingCopyWith<$Res> {
  factory _$$BlocGalleryPopularStateLoadingCopyWith(
          _$BlocGalleryPopularStateLoading value,
          $Res Function(_$BlocGalleryPopularStateLoading) then) =
      __$$BlocGalleryPopularStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocGalleryPopularStateLoadingCopyWithImpl<$Res>
    extends _$BlocGalleryPopularStateCopyWithImpl<$Res,
        _$BlocGalleryPopularStateLoading>
    implements _$$BlocGalleryPopularStateLoadingCopyWith<$Res> {
  __$$BlocGalleryPopularStateLoadingCopyWithImpl(
      _$BlocGalleryPopularStateLoading _value,
      $Res Function(_$BlocGalleryPopularStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocGalleryPopularStateLoading
    implements BlocGalleryPopularStateLoading {
  const _$BlocGalleryPopularStateLoading();

  @override
  String toString() {
    return 'BlocGalleryPopularState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryPopularStateLoading);
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
    required TResult Function(BlocGalleryPopularStateLoading value) loading,
    required TResult Function(BlocGalleryPopularStateLoaded value) loaded,
    required TResult Function(BlocGalleryPopularStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryPopularStateLoading value)? loading,
    TResult? Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult? Function(BlocGalleryPopularStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryPopularStateLoading value)? loading,
    TResult Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult Function(BlocGalleryPopularStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryPopularStateLoading
    implements BlocGalleryPopularState {
  const factory BlocGalleryPopularStateLoading() =
      _$BlocGalleryPopularStateLoading;
}

/// @nodoc
abstract class _$$BlocGalleryPopularStateLoadedCopyWith<$Res> {
  factory _$$BlocGalleryPopularStateLoadedCopyWith(
          _$BlocGalleryPopularStateLoaded value,
          $Res Function(_$BlocGalleryPopularStateLoaded) then) =
      __$$BlocGalleryPopularStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPhotos photos});

  $AppPhotosCopyWith<$Res> get photos;
}

/// @nodoc
class __$$BlocGalleryPopularStateLoadedCopyWithImpl<$Res>
    extends _$BlocGalleryPopularStateCopyWithImpl<$Res,
        _$BlocGalleryPopularStateLoaded>
    implements _$$BlocGalleryPopularStateLoadedCopyWith<$Res> {
  __$$BlocGalleryPopularStateLoadedCopyWithImpl(
      _$BlocGalleryPopularStateLoaded _value,
      $Res Function(_$BlocGalleryPopularStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$BlocGalleryPopularStateLoaded(
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

class _$BlocGalleryPopularStateLoaded implements BlocGalleryPopularStateLoaded {
  const _$BlocGalleryPopularStateLoaded(this.photos);

  @override
  final AppPhotos photos;

  @override
  String toString() {
    return 'BlocGalleryPopularState.loaded(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryPopularStateLoaded &&
            (identical(other.photos, photos) || other.photos == photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryPopularStateLoadedCopyWith<_$BlocGalleryPopularStateLoaded>
      get copyWith => __$$BlocGalleryPopularStateLoadedCopyWithImpl<
          _$BlocGalleryPopularStateLoaded>(this, _$identity);

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
    required TResult Function(BlocGalleryPopularStateLoading value) loading,
    required TResult Function(BlocGalleryPopularStateLoaded value) loaded,
    required TResult Function(BlocGalleryPopularStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryPopularStateLoading value)? loading,
    TResult? Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult? Function(BlocGalleryPopularStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryPopularStateLoading value)? loading,
    TResult Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult Function(BlocGalleryPopularStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryPopularStateLoaded
    implements BlocGalleryPopularState {
  const factory BlocGalleryPopularStateLoaded(final AppPhotos photos) =
      _$BlocGalleryPopularStateLoaded;

  AppPhotos get photos;
  @JsonKey(ignore: true)
  _$$BlocGalleryPopularStateLoadedCopyWith<_$BlocGalleryPopularStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocGalleryPopularStateErrorCopyWith<$Res> {
  factory _$$BlocGalleryPopularStateErrorCopyWith(
          _$BlocGalleryPopularStateError value,
          $Res Function(_$BlocGalleryPopularStateError) then) =
      __$$BlocGalleryPopularStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$BlocGalleryPopularStateErrorCopyWithImpl<$Res>
    extends _$BlocGalleryPopularStateCopyWithImpl<$Res,
        _$BlocGalleryPopularStateError>
    implements _$$BlocGalleryPopularStateErrorCopyWith<$Res> {
  __$$BlocGalleryPopularStateErrorCopyWithImpl(
      _$BlocGalleryPopularStateError _value,
      $Res Function(_$BlocGalleryPopularStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$BlocGalleryPopularStateError(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocGalleryPopularStateError implements BlocGalleryPopularStateError {
  const _$BlocGalleryPopularStateError(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'BlocGalleryPopularState.error(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryPopularStateError &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryPopularStateErrorCopyWith<_$BlocGalleryPopularStateError>
      get copyWith => __$$BlocGalleryPopularStateErrorCopyWithImpl<
          _$BlocGalleryPopularStateError>(this, _$identity);

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
    required TResult Function(BlocGalleryPopularStateLoading value) loading,
    required TResult Function(BlocGalleryPopularStateLoaded value) loaded,
    required TResult Function(BlocGalleryPopularStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryPopularStateLoading value)? loading,
    TResult? Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult? Function(BlocGalleryPopularStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryPopularStateLoading value)? loading,
    TResult Function(BlocGalleryPopularStateLoaded value)? loaded,
    TResult Function(BlocGalleryPopularStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryPopularStateError implements BlocGalleryPopularState {
  const factory BlocGalleryPopularStateError(final String description) =
      _$BlocGalleryPopularStateError;

  String get description;
  @JsonKey(ignore: true)
  _$$BlocGalleryPopularStateErrorCopyWith<_$BlocGalleryPopularStateError>
      get copyWith => throw _privateConstructorUsedError;
}
