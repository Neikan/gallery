// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';
import 'package:gallery_app/data/repositories/repository_image/repository_image.dart';
import 'package:gallery_app/domain/blocs/bloc_image/bloc_image_state.dart';

part 'bloc_image_events.dart';

class BlocGalleryPhoto extends Bloc<BlocGalleryPhotoEvent, BlocImageState> {
  final RepositoryMediaObject repo;

  BlocGalleryPhoto({required this.repo})
      : super(const BlocImageState.loading()) {
    on<BlocGalleryPhotoEventInit>(_handleInit);
  }

  Future<void> _handleInit(
    BlocGalleryPhotoEventInit event,
    Emitter<BlocImageState> emit,
  ) async {
    await repo.init();

    try {
      final filename = await repo.getData(event.image);

      emit(
        filename.isNotEmpty
            ? BlocImageState.loaded(filename)
            : const BlocImageState.error(),
      );
    } catch (_) {
      emit(const BlocImageState.error());
    }
  }
}
