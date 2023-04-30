// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/data/services/service_http_exceptions.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent_state.dart';
import 'package:gallery_app/domain/consts/keys.dart';
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

  late AppPhotos _photosState;

  Future<void> _handleInit(
    BlocGalleryRecentEventInit event,
    Emitter<BlocGalleryRecentState> emit,
  ) async {
    emit(const BlocGalleryRecentState.loading());

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
    BlocGalleryRecentEventNext event,
    Emitter<BlocGalleryRecentState> emit,
  ) async {
    if (_photosState.countOfPages < _photosState.currentPage) return;

    _photosState = _photosState.copyWith(
      isLoadingNextData: true,
    );

    emit(BlocGalleryRecentState.loaded(_photosState));

    await _getData(emit);
  }

  Future<void> _getData(Emitter<BlocGalleryRecentState> emit) async {
    try {
      final queryParameters = <String, dynamic>{
        keyNew: true,
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

      emit(BlocGalleryRecentState.loaded(_photosState));
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocGalleryRecentState.error(description));
    }
  }
}
