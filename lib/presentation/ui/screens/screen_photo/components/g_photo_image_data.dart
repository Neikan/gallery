part of '../screen_photo.dart';

class _GImageData extends StatelessWidget {
  final String filename;

  const _GImageData({
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return Image.file(
      File(filename),
      fit: BoxFit.cover,
    );
  }
}
