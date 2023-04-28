part of '../screen_photo.dart';

class _GImageError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Icon(
        Icons.image_not_supported_outlined,
        color: Colors.white,
        size: sizeErrorImage,
      ),
    );
  }
}
