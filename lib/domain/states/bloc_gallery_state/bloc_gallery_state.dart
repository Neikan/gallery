// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';

part 'bloc_gallery_state.freezed.dart';

@freezed
class BlocGalleryState with _$BlocGalleryState {
  const factory BlocGalleryState.loading() = BlocGalleryLoading;

  const factory BlocGalleryState.loaded(
    AppPhotos photos,
  ) = BlocGalleryStateLoaded;

  const factory BlocGalleryState.error(String description) =
      BlocGalleryStateError;
}
