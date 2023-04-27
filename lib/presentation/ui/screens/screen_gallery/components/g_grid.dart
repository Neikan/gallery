part of '../screen_gallery.dart';

class _GGrid extends StatelessWidget {
  final TabGalleryEnum tab;
  final List<ApiPhoto> photos;

  const _GGrid({
    required this.tab,
    required this.photos,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: PageStorageKey(tab),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 100.0,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: photos.length,
      itemBuilder: (_, index) => _GGridCard(
        photo: photos[index],
      ),
    );
  }
}
