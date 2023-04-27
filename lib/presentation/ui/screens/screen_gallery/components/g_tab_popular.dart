part of '../screen_gallery.dart';

class _GTabPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GRefresh(
      onRefresh: () async {
        BlocProvider.of<BlocGalleryPopular>(context)
            .add(BlocGalleryPopularEventInit());
      },
      child: BlocBuilder<BlocGalleryPopular, BlocGalleryPopularState>(
        builder: (_, state) => state.when(
          loading: () => const GLoader(),
          loaded: (photos) => _GGrid(
            tab: TabGalleryEnum.popular,
            photos: photos,
          ),
          error: (message) => GErrorData(message: message),
        ),
      ),
    );
  }
}
