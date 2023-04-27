// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular_events.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular_state.dart';

class BlocGallery
    extends Bloc<BlocGalleryPopularEvent, BlocGalleryPopularState> {
  final RepositoryGallery repo;

  BlocGallery({required this.repo})
      : super(const BlocGalleryPopularState.loading()) {
    on<BlocGalleryPopularEventInit>(_init);
  }

  Future<void> _init(
    BlocGalleryPopularEventInit event,
    Emitter<BlocGalleryPopularState> emit,
  ) async {
    try {
      final photos = await repo.getData();

      emit(BlocGalleryPopularState.loaded(photos));
    } catch (e) {
      emit(BlocGalleryPopularState.error(e.toString()));
    }
  }
}
