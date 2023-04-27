// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/repositories/repository_photo/repository_photo.dart';
import 'package:gallery_app/data/services/service_http_exceptions.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo_events.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo_state.dart';

class BlocPhoto extends Bloc<BlocPhotoEvent, BlocPhotoState> {
  final RepositoryPhoto repo;

  BlocPhoto({required this.repo}) : super(const BlocPhotoState.loading()) {
    on<BlocPhotoEventInit>(_init);
  }

  Future<void> _init(
    BlocPhotoEventInit event,
    Emitter<BlocPhotoState> emit,
  ) async {
    try {
      final photo = await repo.getData(event.id);

      if (photo != null) {
        emit(BlocPhotoState.loaded(photo));
      }
    } on DioError catch (e) {
      final description = ServiceHttpExceptions.fromError(e).toString();

      emit(BlocPhotoState.error(description));
    }
  }
}
