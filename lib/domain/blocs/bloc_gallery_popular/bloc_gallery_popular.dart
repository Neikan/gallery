// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/data/services/service_http_exceptions.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular_state.dart';
import 'package:gallery_app/domain/consts/keys.dart';
import 'package:gallery_app/domain/utils/throttle.dart';

part 'bloc_gallery_popular_events.dart';

class BlocGalleryPopular
    extends Bloc<BlocGalleryPopularEvent, BlocGalleryPopularState> {
  final RepositoryGallery repo;

  BlocGalleryPopular({required this.repo})
      : super(const BlocGalleryPopularState.loading()) {
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
    Emitter<BlocGalleryPopularState> emit,
  ) async {
    emit(const BlocGalleryPopularState.loading());

    _photosState = const AppPhotos(
      countOfPages: 0,
      currentPage: 1,
      data: [],
      isLoadingNextData: false,
      totalItems: 0,
    );

    await _getData(emit);
  }

  Future<void> _handleNext(
    BlocGalleryPopularEventNext event,
    Emitter<BlocGalleryPopularState> emit,
  ) async {
    if (_photosState.countOfPages < _photosState.currentPage) return;

    _photosState = _photosState.copyWith(
      isLoadingNextData: true,
    );

    emit(BlocGalleryPopularState.loaded(_photosState));

    await _getData(emit);
  }

  Future<void> _getData(Emitter<BlocGalleryPopularState> emit) async {
    try {
      final queryParameters = <String, dynamic>{
        keyPopular: true,
        keyLimit: _photosState.itemsPerPage,
        keyPage: _photosState.currentPage,
      };

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

      emit(BlocGalleryPopularState.loaded(_photosState));
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocGalleryPopularState.error(description));
    }
  }
}
