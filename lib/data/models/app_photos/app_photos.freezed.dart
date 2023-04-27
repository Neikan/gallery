// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppPhotos _$AppPhotosFromJson(Map<String, dynamic> json) {
  return _AppPhotos.fromJson(json);
}

/// @nodoc
mixin _$AppPhotos {
  int get countOfPages => throw _privateConstructorUsedError;
  List<ApiPhoto> get data => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppPhotosCopyWith<AppPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPhotosCopyWith<$Res> {
  factory $AppPhotosCopyWith(AppPhotos value, $Res Function(AppPhotos) then) =
      _$AppPhotosCopyWithImpl<$Res, AppPhotos>;
  @useResult
  $Res call(
      {int countOfPages,
      List<ApiPhoto> data,
      int itemsPerPage,
      int totalItems});
}

/// @nodoc
class _$AppPhotosCopyWithImpl<$Res, $Val extends AppPhotos>
    implements $AppPhotosCopyWith<$Res> {
  _$AppPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countOfPages = null,
    Object? data = null,
    Object? itemsPerPage = null,
    Object? totalItems = null,
  }) {
    return _then(_value.copyWith(
      countOfPages: null == countOfPages
          ? _value.countOfPages
          : countOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ApiPhoto>,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppPhotosCopyWith<$Res> implements $AppPhotosCopyWith<$Res> {
  factory _$$_AppPhotosCopyWith(
          _$_AppPhotos value, $Res Function(_$_AppPhotos) then) =
      __$$_AppPhotosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int countOfPages,
      List<ApiPhoto> data,
      int itemsPerPage,
      int totalItems});
}

/// @nodoc
class __$$_AppPhotosCopyWithImpl<$Res>
    extends _$AppPhotosCopyWithImpl<$Res, _$_AppPhotos>
    implements _$$_AppPhotosCopyWith<$Res> {
  __$$_AppPhotosCopyWithImpl(
      _$_AppPhotos _value, $Res Function(_$_AppPhotos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countOfPages = null,
    Object? data = null,
    Object? itemsPerPage = null,
    Object? totalItems = null,
  }) {
    return _then(_$_AppPhotos(
      countOfPages: null == countOfPages
          ? _value.countOfPages
          : countOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ApiPhoto>,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppPhotos implements _AppPhotos {
  const _$_AppPhotos(
      {required this.countOfPages,
      required final List<ApiPhoto> data,
      this.itemsPerPage = 10,
      required this.totalItems})
      : _data = data;

  factory _$_AppPhotos.fromJson(Map<String, dynamic> json) =>
      _$$_AppPhotosFromJson(json);

  @override
  final int countOfPages;
  final List<ApiPhoto> _data;
  @override
  List<ApiPhoto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int itemsPerPage;
  @override
  final int totalItems;

  @override
  String toString() {
    return 'AppPhotos(countOfPages: $countOfPages, data: $data, itemsPerPage: $itemsPerPage, totalItems: $totalItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppPhotos &&
            (identical(other.countOfPages, countOfPages) ||
                other.countOfPages == countOfPages) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countOfPages,
      const DeepCollectionEquality().hash(_data), itemsPerPage, totalItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppPhotosCopyWith<_$_AppPhotos> get copyWith =>
      __$$_AppPhotosCopyWithImpl<_$_AppPhotos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppPhotosToJson(
      this,
    );
  }
}

abstract class _AppPhotos implements AppPhotos {
  const factory _AppPhotos(
      {required final int countOfPages,
      required final List<ApiPhoto> data,
      final int itemsPerPage,
      required final int totalItems}) = _$_AppPhotos;

  factory _AppPhotos.fromJson(Map<String, dynamic> json) =
      _$_AppPhotos.fromJson;

  @override
  int get countOfPages;
  @override
  List<ApiPhoto> get data;
  @override
  int get itemsPerPage;
  @override
  int get totalItems;
  @override
  @JsonKey(ignore: true)
  _$$_AppPhotosCopyWith<_$_AppPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}
