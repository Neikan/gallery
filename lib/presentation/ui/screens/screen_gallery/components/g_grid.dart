part of '../screen_gallery.dart';

class _GGrid extends StatefulWidget {
  final Future<dynamic> Function() onRefresh;
  final AppPhotos photos;
  final TabGalleryEnum tab;

  const _GGrid({
    required this.onRefresh,
    required this.photos,
    required this.tab,
  });

  @override
  State<_GGrid> createState() => _GGridState();
}

class _GGridState extends State<_GGrid> {
  final ScrollController _scrollController = ScrollController();

  int? lastIndex;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_handleScroll);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.photos.data.isEmpty) {
      return GDataEmpty(
        onRefresh: widget.onRefresh,
        message: labelsGallery[keyContent],
      );
    }

    final currentCount = widget.photos.data.length;
    final totalItems = widget.photos.totalItems;

    // final itemCount =
    //     totalItems <= currentCount ? currentCount : currentCount + 1;

    final itemCount = totalItems <= currentCount ? currentCount : currentCount;

    return GRefresh(
      onRefresh: widget.onRefresh,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              key: PageStorageKey(widget.tab.name),
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 30.0,
              ),
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2.0,
              ),
              itemCount: itemCount,
              itemBuilder: (_, index) {
                // lastIndex = index;

                return _GGridCard(
                  photo: widget.photos.data[index],
                );

                // return index >= currentCount
                //     ? const GLoader()
                //     : _GGridCard(
                //         photo: widget.photos.data[index],
                //       );
              },
              controller: _scrollController,
            ),
          ),
        ],
      ),
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
    if (_isScrollable) {
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

  bool get _isScrollable {
    if (!_scrollController.hasClients) return false;

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;

    return currentScroll >= (maxScroll * 0.9);
  }
}
