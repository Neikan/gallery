part of '../screen_photo.dart';

class _GPhotoDate extends StatelessWidget {
  final String date;

  const _GPhotoDate({
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15.0,
        bottom: 10.0,
      ),
      child: Text(
        DateFormat('dd MMM. yyyy').format(DateTime.parse(date)).toLowerCase(),
        style: const TextStyle(
          fontSize: 12,
          color: colors.gray,
        ),
      ),
    );
  }
}
