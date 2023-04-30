// Dart imports:
import 'dart:io';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_image_state.freezed.dart';

@freezed
class BlocImageState with _$BlocImageState {
  const factory BlocImageState.loading() = BlocImageStateLoading;

  const factory BlocImageState.loaded(File file) = BlocImageStateLoaded;

  const factory BlocImageState.error() = BlocImageStateError;
}
