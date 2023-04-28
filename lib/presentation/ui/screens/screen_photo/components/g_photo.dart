part of '../screen_photo.dart';

class _GPhoto extends StatelessWidget {
  final ApiPhoto photo;
  final Future<dynamic> Function() onRefresh;

  const _GPhoto({
    required this.photo,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final isUser = photo.user != null;
    final isDescription = photo.description.isNotEmpty;

    final paddingUser =
        isUser ? const EdgeInsets.only(top: 5.0) : EdgeInsets.zero;

    final paddingDescription =
        isDescription ? const EdgeInsets.only(top: 15.0) : EdgeInsets.zero;

    //ToDo Некоторые данные на данный момент отсутствуют в модели. Для большего соответствия макету использованы mock-данные
    return GRefresh(
      onRefresh: onRefresh,
      child: LayoutBuilder(
        builder: (_, constraints) => Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _GPhotoTitle(
                            title: 'Get better - unused exploration'),
                        if (isUser)
                          _GPhotoUser(user: photo.user!, padding: paddingUser),
                        if (isDescription)
                          _GPhotoDescription(
                            description: photo.description,
                            padding: paddingDescription,
                          ),
                        const _GPhotoTags(
                          tags: [
                            'Animals',
                            'tag2928239203023923029302238',
                          ],
                        ),
                        _GPhotoDate(date: photo.dateCreate),
                        const _GPhotoViews(views: 1000),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
