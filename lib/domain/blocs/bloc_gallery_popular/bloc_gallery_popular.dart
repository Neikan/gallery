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

  int _page = 1;
  AppPhotos _photos = const AppPhotos(
    countOfPages: 0,
    data: [],
    totalItems: 0,
  );

  Future<void> _handleInit(
    BlocGalleryPopularEventInit event,
    Emitter<BlocGalleryPopularState> emit,
  ) async {
    emit(const BlocGalleryPopularState.loading());

    await _getData(emit);
  }

  Future<void> _handleNext(
    BlocGalleryPopularEventNext event,
    Emitter<BlocGalleryPopularState> emit,
  ) async {
    if (_photos.countOfPages < _page) return;

    await _getData(emit);
  }

  Future<void> _getData(Emitter<BlocGalleryPopularState> emit) async {
    try {
      final queryParameters = <String, dynamic>{
        'popular': true,
        'limit': _photos.itemsPerPage,
        'page': _page,
      };

      final photos = await repo.getData(queryParameters: queryParameters);

      if (photos != null) {
        _photos = _photos.copyWith(
          totalItems: photos.totalItems,
          data: [
            ..._photos.data,
            ...photos.data,
          ],
          countOfPages: photos.countOfPages,
        );

        _page++;
      }

      emit(BlocGalleryPopularState.loaded(_photos));
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocGalleryPopularState.error(description));
    }
  }
}
