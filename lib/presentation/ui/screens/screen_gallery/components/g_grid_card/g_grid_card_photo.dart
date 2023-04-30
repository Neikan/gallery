part of '../../screen_gallery.dart';

class _GGridCardPhoto extends StatelessWidget {
  final ApiPhoto photo;

  const _GGridCardPhoto({
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocImage(repo: RepositoryImageImp())
        ..add(
          (BlocGalleryPhotoEventInit(image: photo.image)),
        ),
      child: BlocBuilder<BlocImage, BlocImageState>(
        builder: (_, state) => state.when(
          loading: () => const GLoader(color: Colors.white),
          loaded: (file) => _GImageData(file: file),
          error: () => _GImageError(),
        ),
      ),
    );
  }
}
