// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular_events.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular_state.dart';

class BlocGalleryPopular
    extends Bloc<BlocGalleryPopularEvent, BlocGalleryPopularState> {
  final RepositoryGallery repo;

  BlocGalleryPopular({required this.repo})
      : super(const BlocGalleryPopularState.loading()) {
    on<BlocGalleryPopularEventInit>(_init);
  }

  Future<void> _init(
    BlocGalleryPopularEventInit event,
    Emitter<BlocGalleryPopularState> emit,
  ) async {
    emit(const BlocGalleryPopularState.loading());

    try {
      final gallery = await repo.getData(
        queryParameters: {'popular': true},
      );

      emit(BlocGalleryPopularState.loaded(gallery));
    } catch (e) {
      emit(BlocGalleryPopularState.error(e.toString()));
    }
  }
}
