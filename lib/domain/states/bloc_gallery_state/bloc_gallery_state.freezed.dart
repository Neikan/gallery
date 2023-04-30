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
    required TResult Function(String description) errorStart,
    required TResult Function(AppPhotos photos, String description) errorNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? errorStart,
    TResult? Function(AppPhotos photos, String description)? errorNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? errorStart,
    TResult Function(AppPhotos photos, String description)? errorNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateErrorStart value) errorStart,
    required TResult Function(BlocGalleryStateErrorNext value) errorNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult? Function(BlocGalleryStateErrorNext value)? errorNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult Function(BlocGalleryStateErrorNext value)? errorNext,
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
    required TResult Function(String description) errorStart,
    required TResult Function(AppPhotos photos, String description) errorNext,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? errorStart,
    TResult? Function(AppPhotos photos, String description)? errorNext,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? errorStart,
    TResult Function(AppPhotos photos, String description)? errorNext,
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
    required TResult Function(BlocGalleryStateErrorStart value) errorStart,
    required TResult Function(BlocGalleryStateErrorNext value) errorNext,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult? Function(BlocGalleryStateErrorNext value)? errorNext,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult Function(BlocGalleryStateErrorNext value)? errorNext,
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
    required TResult Function(String description) errorStart,
    required TResult Function(AppPhotos photos, String description) errorNext,
  }) {
    return loaded(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? errorStart,
    TResult? Function(AppPhotos photos, String description)? errorNext,
  }) {
    return loaded?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? errorStart,
    TResult Function(AppPhotos photos, String description)? errorNext,
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
    required TResult Function(BlocGalleryStateErrorStart value) errorStart,
    required TResult Function(BlocGalleryStateErrorNext value) errorNext,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult? Function(BlocGalleryStateErrorNext value)? errorNext,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult Function(BlocGalleryStateErrorNext value)? errorNext,
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
abstract class _$$BlocGalleryStateErrorStartCopyWith<$Res> {
  factory _$$BlocGalleryStateErrorStartCopyWith(
          _$BlocGalleryStateErrorStart value,
          $Res Function(_$BlocGalleryStateErrorStart) then) =
      __$$BlocGalleryStateErrorStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$BlocGalleryStateErrorStartCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$BlocGalleryStateErrorStart>
    implements _$$BlocGalleryStateErrorStartCopyWith<$Res> {
  __$$BlocGalleryStateErrorStartCopyWithImpl(
      _$BlocGalleryStateErrorStart _value,
      $Res Function(_$BlocGalleryStateErrorStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$BlocGalleryStateErrorStart(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocGalleryStateErrorStart implements BlocGalleryStateErrorStart {
  const _$BlocGalleryStateErrorStart(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'BlocGalleryState.errorStart(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateErrorStart &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryStateErrorStartCopyWith<_$BlocGalleryStateErrorStart>
      get copyWith => __$$BlocGalleryStateErrorStartCopyWithImpl<
          _$BlocGalleryStateErrorStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppPhotos photos) loaded,
    required TResult Function(String description) errorStart,
    required TResult Function(AppPhotos photos, String description) errorNext,
  }) {
    return errorStart(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? errorStart,
    TResult? Function(AppPhotos photos, String description)? errorNext,
  }) {
    return errorStart?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? errorStart,
    TResult Function(AppPhotos photos, String description)? errorNext,
    required TResult orElse(),
  }) {
    if (errorStart != null) {
      return errorStart(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateErrorStart value) errorStart,
    required TResult Function(BlocGalleryStateErrorNext value) errorNext,
  }) {
    return errorStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult? Function(BlocGalleryStateErrorNext value)? errorNext,
  }) {
    return errorStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult Function(BlocGalleryStateErrorNext value)? errorNext,
    required TResult orElse(),
  }) {
    if (errorStart != null) {
      return errorStart(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryStateErrorStart implements BlocGalleryState {
  const factory BlocGalleryStateErrorStart(final String description) =
      _$BlocGalleryStateErrorStart;

  String get description;
  @JsonKey(ignore: true)
  _$$BlocGalleryStateErrorStartCopyWith<_$BlocGalleryStateErrorStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocGalleryStateErrorNextCopyWith<$Res> {
  factory _$$BlocGalleryStateErrorNextCopyWith(
          _$BlocGalleryStateErrorNext value,
          $Res Function(_$BlocGalleryStateErrorNext) then) =
      __$$BlocGalleryStateErrorNextCopyWithImpl<$Res>;
  @useResult
  $Res call({AppPhotos photos, String description});

  $AppPhotosCopyWith<$Res> get photos;
}

/// @nodoc
class __$$BlocGalleryStateErrorNextCopyWithImpl<$Res>
    extends _$BlocGalleryStateCopyWithImpl<$Res, _$BlocGalleryStateErrorNext>
    implements _$$BlocGalleryStateErrorNextCopyWith<$Res> {
  __$$BlocGalleryStateErrorNextCopyWithImpl(_$BlocGalleryStateErrorNext _value,
      $Res Function(_$BlocGalleryStateErrorNext) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? description = null,
  }) {
    return _then(_$BlocGalleryStateErrorNext(
      null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as AppPhotos,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$BlocGalleryStateErrorNext implements BlocGalleryStateErrorNext {
  const _$BlocGalleryStateErrorNext(this.photos, this.description);

  @override
  final AppPhotos photos;
  @override
  final String description;

  @override
  String toString() {
    return 'BlocGalleryState.errorNext(photos: $photos, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocGalleryStateErrorNext &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photos, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocGalleryStateErrorNextCopyWith<_$BlocGalleryStateErrorNext>
      get copyWith => __$$BlocGalleryStateErrorNextCopyWithImpl<
          _$BlocGalleryStateErrorNext>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AppPhotos photos) loaded,
    required TResult Function(String description) errorStart,
    required TResult Function(AppPhotos photos, String description) errorNext,
  }) {
    return errorNext(photos, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AppPhotos photos)? loaded,
    TResult? Function(String description)? errorStart,
    TResult? Function(AppPhotos photos, String description)? errorNext,
  }) {
    return errorNext?.call(photos, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AppPhotos photos)? loaded,
    TResult Function(String description)? errorStart,
    TResult Function(AppPhotos photos, String description)? errorNext,
    required TResult orElse(),
  }) {
    if (errorNext != null) {
      return errorNext(photos, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocGalleryLoading value) loading,
    required TResult Function(BlocGalleryStateLoaded value) loaded,
    required TResult Function(BlocGalleryStateErrorStart value) errorStart,
    required TResult Function(BlocGalleryStateErrorNext value) errorNext,
  }) {
    return errorNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocGalleryLoading value)? loading,
    TResult? Function(BlocGalleryStateLoaded value)? loaded,
    TResult? Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult? Function(BlocGalleryStateErrorNext value)? errorNext,
  }) {
    return errorNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocGalleryLoading value)? loading,
    TResult Function(BlocGalleryStateLoaded value)? loaded,
    TResult Function(BlocGalleryStateErrorStart value)? errorStart,
    TResult Function(BlocGalleryStateErrorNext value)? errorNext,
    required TResult orElse(),
  }) {
    if (errorNext != null) {
      return errorNext(this);
    }
    return orElse();
  }
}

abstract class BlocGalleryStateErrorNext implements BlocGalleryState {
  const factory BlocGalleryStateErrorNext(
          final AppPhotos photos, final String description) =
      _$BlocGalleryStateErrorNext;

  AppPhotos get photos;
  String get description;
  @JsonKey(ignore: true)
  _$$BlocGalleryStateErrorNextCopyWith<_$BlocGalleryStateErrorNext>
      get copyWith => throw _privateConstructorUsedError;
}
