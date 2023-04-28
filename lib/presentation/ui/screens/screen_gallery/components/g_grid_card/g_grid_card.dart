part of '../../screen_gallery.dart';

class _GGridCard extends StatelessWidget {
  final ApiPhoto photo;

  const _GGridCard({
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: _GGridCardPhoto(photo: photo),
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
