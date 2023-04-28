part of '../screen_photo.dart';

class _GPhotoViews extends StatelessWidget {
  final int views;

  const _GPhotoViews({
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    final count = views > 999 ? '999+' : '$views';

    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: 'Views: ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: count,
            style: const TextStyle(
              fontSize: 12,
              color: colors.gray,
            ),
          )
        ],
      ),
    );
  }
}
