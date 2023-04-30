part of '../screen_photo.dart';

class _GImageData extends StatelessWidget {
  final File file;

  const _GImageData({
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    return Image.file(
      file,
      fit: BoxFit.cover,
    );
  }
}
