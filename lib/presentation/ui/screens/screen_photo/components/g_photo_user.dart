part of '../screen_photo.dart';

class _GPhotoUser extends StatelessWidget {
  final String user;
  final EdgeInsets? padding;

  const _GPhotoUser({
    required this.user,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        user,
        style: const TextStyle(
          fontSize: 15,
          color: colors.brand,
        ),
      ),
    );
  }
}
