// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/data/services/service_http_exceptions.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent_state.dart';
import 'package:gallery_app/domain/utils/throttle.dart';

part 'bloc_gallery_recent_events.dart';

class BlocGalleryRecent
    extends Bloc<BlocGalleryRecentEvent, BlocGalleryRecentState> {
  final RepositoryGallery repo;

  BlocGalleryRecent({required this.repo})
      : super(const BlocGalleryRecentState.loading()) {
    on<BlocGalleryRecentEventInit>(
      _handleInit,
      transformer: throttleDroppable(throttleDuration),
    );
    on<BlocGalleryRecentEventNext>(
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
    BlocGalleryRecentEventInit event,
    Emitter<BlocGalleryRecentState> emit,
  ) async {
    emit(const BlocGalleryRecentState.loading());

    _reset();

    await _getData(emit);
  }

  Future<void> _handleNext(
    BlocGalleryRecentEventNext event,
    Emitter<BlocGalleryRecentState> emit,
  ) async {
    if (_photos.countOfPages < _page) return;

    await _getData(emit);
  }

  Future<void> _getData(Emitter<BlocGalleryRecentState> emit) async {
    try {
      final queryParameters = <String, dynamic>{
        'new': true,
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

      emit(BlocGalleryRecentState.loaded(_photos));
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocGalleryRecentState.error(description));
    }
  }

  void _reset() {
    _page = 1;

    _photos = _photos.copyWith(
      countOfPages: 0,
      data: [],
      totalItems: 0,
    );
  }
}
