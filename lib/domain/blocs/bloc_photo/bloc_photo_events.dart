abstract class BlocPhotoEvent {}

class BlocPhotoEventInit extends BlocPhotoEvent {
  final int id;

  BlocPhotoEventInit(this.id);
}
