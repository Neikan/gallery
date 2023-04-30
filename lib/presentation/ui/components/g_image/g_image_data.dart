part of 'g_image.dart';

class _GImageData extends StatelessWidget {
  final File file;
  final bool? isRoundedBorder;

  const _GImageData({
    required this.file,
    this.isRoundedBorder,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: MemoryImage(kTransparentImage),
      image: FileImage(file),
      fit: BoxFit.cover,
      imageErrorBuilder: (_, __, ___) => _GImageError(
        isRoundedBorder: isRoundedBorder,
      ),
    );
  }
}
