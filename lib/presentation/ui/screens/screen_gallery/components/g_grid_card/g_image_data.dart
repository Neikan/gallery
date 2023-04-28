part of '../../screen_gallery.dart';

class _GImageData extends StatelessWidget {
  final String filename;

  const _GImageData({
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(borderRaduisSmall),
      child: Image.file(
        File(filename),
        fit: BoxFit.cover,
      ),
    );
  }
}
