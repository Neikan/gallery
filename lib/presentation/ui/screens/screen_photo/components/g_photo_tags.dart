part of '../screen_photo.dart';

class _GPhotoTags extends StatelessWidget {
  final List<String> tags;

  const _GPhotoTags({
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Wrap(
        spacing: 5.0,
        alignment: WrapAlignment.start,
        children: [
          ...tags
              .map((tag) => Chip(
                    padding: EdgeInsets.zero,
                    label: Text(tag),
                  ))
              .toList()
        ],
      ),
    );
  }
}
