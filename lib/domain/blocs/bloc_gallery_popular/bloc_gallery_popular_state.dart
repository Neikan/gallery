// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';

part 'bloc_gallery_popular_state.freezed.dart';

@freezed
class BlocGalleryPopularState with _$BlocGalleryPopularState {
  const factory BlocGalleryPopularState.loading() =
      BlocGalleryPopularStateLoading;

  const factory BlocGalleryPopularState.loaded(AppPhotos photos) =
      BlocGalleryPopularStateLoaded;

  const factory BlocGalleryPopularState.error(String description) =
      BlocGalleryPopularStateError;
}
