part of '../../screen_gallery.dart';

class _GImageData extends StatelessWidget {
  final File file;

  const _GImageData({
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(borderRaduisSmall),
      child: FadeInImage(
        placeholder: MemoryImage(kTransparentImage),
        image: FileImage(file),
        fit: BoxFit.cover,
        imageErrorBuilder: (_, __, ___) => _GImageError(),
      ),
    );
  }
}
