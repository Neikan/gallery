// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/data/services/service_http_exceptions.dart';
import 'package:gallery_app/domain/states/bloc_gallery_state/bloc_gallery_state.dart';
import 'package:gallery_app/domain/utils/requests.dart';
import 'package:gallery_app/domain/utils/throttle.dart';

part 'bloc_gallery_popular_events.dart';

class BlocGalleryPopular
    extends Bloc<BlocGalleryPopularEvent, BlocGalleryState> {
  final RepositoryGallery repo;

  BlocGalleryPopular({required this.repo})
      : super(const BlocGalleryState.loading()) {
    on<BlocGalleryPopularEventInit>(
      _handleInit,
      transformer: throttleDroppable(throttleDuration),
    );
    on<BlocGalleryPopularEventNext>(
      _handleNext,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  late AppPhotos _photosState;

  Future<void> _handleInit(
    BlocGalleryPopularEventInit event,
    Emitter<BlocGalleryState> emit,
  ) async {
    emit(const BlocGalleryState.loading());

    _photosState = const AppPhotos(
      countOfPages: 0,
      currentPage: 1,
      data: [],
      isLoadingNextData: false,
      totalItems: 0,
    );

    try {
      await _getData();

      emit(BlocGalleryState.loaded(_photosState));
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocGalleryState.errorStart(description));
    }
  }

  Future<void> _handleNext(
    BlocGalleryPopularEventNext event,
    Emitter<BlocGalleryState> emit,
  ) async {
    if (_photosState.countOfPages < _photosState.currentPage &&
        _photosState.isLoadingNextData) return;

    _photosState = _photosState.copyWith(
      isLoadingNextData: true,
    );

    emit(BlocGalleryState.loaded(_photosState));

    try {
      await _getData();

      emit(BlocGalleryState.loaded(_photosState));
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocGalleryState.errorNext(_photosState, description));
    }
  }

  Future<void> _getData() async {
    final queryParameters = getGalleryParameters(
      _photosState,
      isPopular: true,
    );

    final photos = await repo.getData(queryParameters: queryParameters);

    if (photos != null) {
      _photosState = _photosState.copyWith(
        totalItems: photos.totalItems,
        data: [
          ..._photosState.data,
          ...photos.data,
        ],
        countOfPages: photos.countOfPages,
        currentPage: _photosState.currentPage + 1,
        isLoadingNextData: false,
      );
    }
  }
}
