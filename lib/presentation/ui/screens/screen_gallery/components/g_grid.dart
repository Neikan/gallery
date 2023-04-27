part of '../screen_gallery.dart';

class _GGrid extends StatefulWidget {
  final TabGalleryEnum tab;
  final AppPhotos photos;

  const _GGrid({
    required this.tab,
    required this.photos,
  });

  @override
  State<_GGrid> createState() => _GGridState();
}

class _GGridState extends State<_GGrid> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_handleScroll);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.photos.data.isEmpty) {
      return GDataEmpty(
        message: labelsGallery[keyContent],
      );
    }

    final currentCount = widget.photos.data.length;
    final totalItems = widget.photos.totalItems;

    final itemCount =
        totalItems <= currentCount ? currentCount : currentCount + 1;

    return GridView.builder(
      key: PageStorageKey(widget.tab),
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
      itemCount: itemCount,
      itemBuilder: (_, index) => index >= currentCount
          ? const GLoader()
          : _GGridCard(
              photo: widget.photos.data[index],
            ),
      controller: _scrollController,
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_handleScroll)
      ..dispose();

    super.dispose();
  }

  void _handleScroll() {
    if (_isBottom) {
      if (widget.tab == TabGalleryEnum.recent) {
        BlocProvider.of<BlocGalleryRecent>(context)
            .add(BlocGalleryRecentEventNext());
      }

      if (widget.tab == TabGalleryEnum.popular) {
        BlocProvider.of<BlocGalleryPopular>(context)
            .add(BlocGalleryPopularEventNext());
      }
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;

    return currentScroll >= (maxScroll * 0.9);
  }
}
