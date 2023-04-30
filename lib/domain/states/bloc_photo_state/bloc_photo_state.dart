// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';

part 'bloc_photo_state.freezed.dart';

@freezed
class BlocPhotoState with _$BlocPhotoState {
  const factory BlocPhotoState.loading() = BlocPhotoStateLoading;

  const factory BlocPhotoState.loaded(ApiPhoto photo) = BlocPhotoStateLoaded;

  const factory BlocPhotoState.error(String message) = BlocPhotoStateError;
}
