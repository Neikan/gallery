part of '../../screen_gallery.dart';

class _GImageError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(borderRaduisSmall),
        border: Border.all(color: colors.grayLight),
      ),
      child: const Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.image_not_supported_outlined,
          color: colors.grayLight,
          size: sizeErrorImage,
        ),
      ),
    );
  }
}
