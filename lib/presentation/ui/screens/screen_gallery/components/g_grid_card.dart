part of '../screen_gallery.dart';

class _GGridCard extends StatelessWidget {
  final ApiPhoto photo;

  const _GGridCard({
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        minVerticalPadding: 0.0,
        contentPadding: EdgeInsets.zero,
        title: GImageAsset(image: photo.image.id),
        onTap: () {
          final arguments = {keyPhoto: photo};

          Navigator.pushNamed(
            context,
            routePhoto,
            arguments: arguments,
          );
        },
      ),
    );
  }
}
