part of '../screen_gallery.dart';

class _GTabRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GRefresh(
      onRefresh: () async {
        BlocProvider.of<BlocGalleryRecent>(context)
            .add(BlocGalleryRecentEventInit());
      },
      child: BlocBuilder<BlocGalleryRecent, BlocGalleryRecentState>(
        builder: (_, state) => state.when(
          loading: () => const GLoader(),
          loaded: (photos) => _GGrid(
            tab: TabGalleryEnum.recent,
            photos: photos,
          ),
          error: (description) => GDataEmpty(description: description),
        ),
      ),
    );
  }
}
