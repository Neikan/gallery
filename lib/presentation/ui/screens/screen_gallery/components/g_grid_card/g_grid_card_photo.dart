part of '../../screen_gallery.dart';

class _GGridCardPhoto extends StatelessWidget {
  final ApiPhoto photo;

  const _GGridCardPhoto({
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocGalleryPhoto(repo: RepositoryMediaObjectImp())
        ..add(
          (BlocGalleryPhotoEventInit(image: photo.image)),
        ),
      child: BlocBuilder<BlocGalleryPhoto, BlocImageState>(
        builder: (_, state) => state.when(
          loading: () => const GLoader(),
          loaded: (filename) => _GImageData(filename: filename),
          error: () => _GImageError(),
        ),
      ),
    );
  }
}
