// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';

part 'bloc_gallery_recent_state.freezed.dart';

@freezed
class BlocGalleryRecentState with _$BlocGalleryRecentState {
  const factory BlocGalleryRecentState.loading() =
      BlocGalleryRecentStateLoading;

  const factory BlocGalleryRecentState.loaded(List<ApiPhoto> photos) =
      BlocGalleryRecentStateLoaded;

  const factory BlocGalleryRecentState.error(String message) =
      BlocGalleryRecentStateError;
}
