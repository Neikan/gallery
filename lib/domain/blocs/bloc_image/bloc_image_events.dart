part of 'bloc_image.dart';

abstract class BlocGalleryPhotoEvent {}

class BlocGalleryPhotoEventInit extends BlocGalleryPhotoEvent {
  final ApiImage? image;

  BlocGalleryPhotoEventInit({
    this.image,
  });
}
