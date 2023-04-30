part of '../../screen_gallery.dart';

class _GGridCardPhoto extends StatelessWidget {
  final ApiPhoto photo;

  const _GGridCardPhoto({
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(borderRaduisSmall),
      child: GImage(
        photo: photo,
        isRoundedBorder: true,
      ),
    );
  }
}
