// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/common.dart';
import 'package:gallery_app/presentation/ui/components/g_svg.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;

class GIcon extends StatelessWidget {
  final Color? color;
  final double? size;
  final String? name, semanticsLabel;
  final EdgeInsets? padding;

  const GIcon({
    super.key,
    this.color = colors.gray,
    this.name,
    this.padding = const EdgeInsets.only(bottom: 5.0),
    this.semanticsLabel,
    this.size = 22.0,
  });

  @override
  Widget build(BuildContext context) {
    return GSvg(
      padding: padding,
      color: color,
      name: '$appUrlIcons$name',
      size: size,
      semanticsLabel: semanticsLabel,
    );
  }
}
