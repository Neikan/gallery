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

    return GImage(
      photo: photo,
      width: width,
      height: height,
    );
  }
}
