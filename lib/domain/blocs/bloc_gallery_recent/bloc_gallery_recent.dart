// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent_events.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent_state.dart';

class BlocGalleryRecent
    extends Bloc<BlocGalleryRecentEvent, BlocGalleryRecentState> {
  final RepositoryGallery repo;

  BlocGalleryRecent({required this.repo})
      : super(const BlocGalleryRecentState.loading()) {
    on<BlocGalleryRecentEventInit>(_init);
  }

  Future<void> _init(
    BlocGalleryRecentEventInit event,
    Emitter<BlocGalleryRecentState> emit,
  ) async {
    emit(const BlocGalleryRecentState.loading());

    try {
      final photos = await repo.getData(
        queryParameters: {'new': true},
      );

      emit(BlocGalleryRecentState.loaded(photos));
    } catch (e) {
      emit(BlocGalleryRecentState.error(e.toString()));
    }
  }
}
