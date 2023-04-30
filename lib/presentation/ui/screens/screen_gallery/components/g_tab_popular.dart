part of '../screen_gallery.dart';

class _GTabPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> handleRefresh() async {
      BlocProvider.of<BlocGalleryPopular>(context)
          .add(BlocGalleryPopularEventInit());
    }

    Widget buildGrid(AppPhotos photos) => _GGrid(
          onRefresh: handleRefresh,
          photos: photos,
          tab: TabGalleryEnum.popular,
        );

    return BlocBuilder<BlocGalleryPopular, BlocGalleryState>(
      builder: (_, state) => state.when(
        loading: () => const GLoader(),
        loaded: buildGrid,
        errorStart: (description) => GDataEmpty(
          onRefresh: handleRefresh,
          description: description,
        ),
        errorNext: (photos, _) => buildGrid(photos),
      ),
    );
  }
}
