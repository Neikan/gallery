part of '../screen_photo.dart';

class _GPhotoTitle extends StatelessWidget {
  final String title;

  const _GPhotoTitle({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        color: colors.blue,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
