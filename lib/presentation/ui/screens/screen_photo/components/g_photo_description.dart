part of '../screen_photo.dart';

class _GPhotoDescription extends StatelessWidget {
  final String description;
  final EdgeInsets? padding;

  const _GPhotoDescription({
    required this.description,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        description,
        style: const TextStyle(
          fontSize: 12,
          color: colors.grayDark,
        ),
      ),
    );
  }
}
