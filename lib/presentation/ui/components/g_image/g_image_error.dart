part of 'g_image.dart';

class _GImageError extends StatelessWidget {
  final bool? isRoundedBorder;

  const _GImageError({
    this.isRoundedBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: isRoundedBorder == true
            ? const BorderRadius.all(borderRaduisSmall)
            : null,
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
