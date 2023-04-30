// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';

part 'app_photos.freezed.dart';
part 'app_photos.g.dart';

@freezed
class AppPhotos with _$AppPhotos {
  const factory AppPhotos({
    required int countOfPages,
    required List<ApiPhoto> data,
    required int totalItems,
    @Default(10) int itemsPerPage,
    @Default(1) int currentPage,
    @Default(false) bool isLoadingNextData,
  }) = _AppPhotos;

  factory AppPhotos.fromJson(Map<String, dynamic> json) =>
      _$AppPhotosFromJson(json);
}
