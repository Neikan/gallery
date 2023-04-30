part of '../screen_gallery.dart';

class _GTabRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> handleRefresh() async {
      BlocProvider.of<BlocGalleryRecent>(context)
          .add(BlocGalleryRecentEventInit());
    }

    Widget buildGrid(AppPhotos photos) => _GGrid(
          onRefresh: handleRefresh,
          photos: photos,
          tab: TabGalleryEnum.recent,
        );

    return BlocBuilder<BlocGalleryRecent, BlocGalleryState>(
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
