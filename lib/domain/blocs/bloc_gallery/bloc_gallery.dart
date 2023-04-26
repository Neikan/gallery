// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery/bloc_gallery_events.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery/bloc_gallery_state.dart';

class BlocGallery extends Bloc<BlocGalleryEvent, BlocGalleryState> {
  final RepositoryGallery repo;

  BlocGallery({required this.repo}) : super(const BlocGalleryState.loading()) {
    on<BlocGalleryEventInit>(_init);
  }

  Future<void> _init(
    BlocGalleryEventInit event,
    Emitter<BlocGalleryState> emit,
  ) async {
    try {
      final gallery = await repo.getData();

      emit(BlocGalleryState.loaded(gallery));
    } catch (e) {
      emit(BlocGalleryState.error(e.toString()));
    }
  }
}
