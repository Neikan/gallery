// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';

part 'bloc_gallery_recent_state.freezed.dart';

@freezed
class BlocGalleryRecentState with _$BlocGalleryRecentState {
  const factory BlocGalleryRecentState.loading() =
      BlocGalleryRecentStateLoading;

  const factory BlocGalleryRecentState.loaded(
    AppPhotos photos,
  ) = BlocGalleryRecentStateLoaded;

  const factory BlocGalleryRecentState.error(String description) =
      BlocGalleryRecentStateError;
}
