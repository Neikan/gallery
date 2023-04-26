// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';

part 'bloc_gallery_state.freezed.dart';

@freezed
class BlocGalleryState with _$BlocGalleryState {
  const factory BlocGalleryState.loading() = BlocGalleryStateLoading;

  const factory BlocGalleryState.loaded(List<ApiPhoto> photos) =
      BlocGalleryStateLoaded;

  const factory BlocGalleryState.error(String message) = BlocGalleryStateError;
}
