part of '../screen_photo.dart';

class _GGridCardPhoto extends StatelessWidget {
  final ApiPhoto photo;

  const _GGridCardPhoto({
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 0.55;

    return BlocProvider(
      create: (_) => BlocImage(repo: RepositoryImageImp())
        ..add(
          (BlocGalleryPhotoEventInit(image: photo.image)),
        ),
      child: Container(
        color: colors.grayLight,
        width: width,
        height: height,
        child: BlocBuilder<BlocImage, BlocImageState>(
          builder: (_, state) => state.when(
            loading: () => const GLoader(color: Colors.white),
            loaded: (filename) => _GImageData(filename: filename),
            error: () => _GImageError(),
          ),
        ),
      ),
    );
  }
}
