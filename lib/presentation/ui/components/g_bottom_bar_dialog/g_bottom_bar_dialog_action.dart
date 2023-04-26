part of 'g_bottom_bar_dialog.dart';

class _GBottomBarDialogAction extends StatelessWidget {
  final String title;
  final Color? color;
  final double? height;
  final InkBorderEnum? borderType;
  const _GBottomBarDialogAction({
    required this.title,
    this.borderType,
    this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = _getBorderRadius();

    return Ink(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width,
      height: height ?? heightDialogActionContent,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () => Navigator.pop(context),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius() {
    if (borderType == InkBorderEnum.top) {
      return const BorderRadius.only(
        topLeft: defaultBorderRaduis,
        topRight: defaultBorderRaduis,
      );
    }

    if (borderType == InkBorderEnum.bottom) {
      return const BorderRadius.only(
        bottomLeft: defaultBorderRaduis,
        bottomRight: defaultBorderRaduis,
      );
    }

    return const BorderRadius.all(defaultBorderRaduis);
  }
}
