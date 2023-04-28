// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_image_state.freezed.dart';

@freezed
class BlocImageState with _$BlocImageState {
  const factory BlocImageState.loading() = BlocImageStateLoading;

  const factory BlocImageState.loaded(String filename) = BlocImageStateLoaded;

  const factory BlocImageState.error() = BlocImageStateError;
}
