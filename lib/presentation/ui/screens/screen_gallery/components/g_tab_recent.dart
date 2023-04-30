part of '../screen_gallery.dart';

class _GTabRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> handleRefresh() async {
      BlocProvider.of<BlocGalleryRecent>(context)
          .add(BlocGalleryRecentEventInit());
    }

    return BlocBuilder<BlocGalleryRecent, BlocGalleryState>(
      builder: (_, state) => state.when(
        loading: () => const GLoader(),
        loaded: (photos) => _GGrid(
          onRefresh: handleRefresh,
          photos: photos,
          tab: TabGalleryEnum.recent,
        ),
        errorStart: (description) => GDataEmpty(
          onRefresh: handleRefresh,
          description: description,
        ),
        errorNext: (photos, description) => _GGrid(
          onRefresh: handleRefresh,
          photos: photos,
          tab: TabGalleryEnum.recent,
        ),
      ),
    );
  }
}
