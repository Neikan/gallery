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
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
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
abstract class _$$BlocGalleryLoadingCopyWith<$Res> {
  factory _$$BlocGalleryLoadingCopyWith(_$BlocGalleryLoading value,
          $Res Function(_$BlocGalleryLoading) then) =
      __$$BlocGalleryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocGalleryLoadingCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$BlocGalleryLoading>
    implements _$$BlocGalleryLoadingCopyWith<$Res> {
  __$$BlocGalleryLoadingCopyWithImpl(
      _$BlocGalleryLoading _value, $Res Function(_$BlocGalleryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocGalleryLoading implements BlocGalleryLoading {
  const _$BlocGalleryLoading();

  @override
  String toString() {
    return 'BlocGalleryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlocGalleryLoading);
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
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
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

abstract class BlocGalleryLoading implements BlocGalleryState {
  const factory BlocGalleryLoading() = _$BlocGalleryLoading;
}

/// @nodoc
abstract class _$$BlocGalleryStateLoadedCopyWith<$Res> {
  factory _$$BlocGalleryStateLoadedCopyWith(_$BlocGalleryStateLoaded value,
          $Res Function(_$BlocGalleryStateLoaded) then) =
      __$$BlocGalleryStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPhotos photos});

  $AppPhotosCopyWith<$Res> get photos;
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

class _$BlocGalleryStateLoaded implements BlocGalleryStateLoaded {
  const _$BlocGalleryStateLoaded(this.photos);

  @override
  final AppPhotos photos;

  @override
  String toString() {
    return 'BlocGalleryState.loaded(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateLoaded &&
            (identical(other.photos, photos) || other.photos == photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photos);

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
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
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
  const factory BlocGalleryStateLoaded(final AppPhotos photos) =
      _$BlocGalleryStateLoaded;

  AppPhotos get photos;
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
  $Res call({String description});
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
    Object? description = null,
  }) {
    return _then(_$BlocGalleryStateError(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocGalleryStateError implements BlocGalleryStateError {
  const _$BlocGalleryStateError(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'BlocGalleryState.error(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateError &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

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
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
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
  const factory BlocGalleryStateError(final String description) =
      _$BlocGalleryStateError;

  String get description;
  @JsonKey(ignore: true)
  _$$BlocGalleryStateErrorCopyWith<_$BlocGalleryStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
