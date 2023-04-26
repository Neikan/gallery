// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/common.dart';

class GSvg extends StatelessWidget {
  final Color? color;
  final double? size;
  final String? name, semanticsLabel;
  final EdgeInsets? padding;

  const GSvg({
    super.key,
    this.color,
    this.name,
    this.padding,
    this.semanticsLabel,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: SvgPicture.asset(
        '$appUrlImages$name$extensionSvg',
        semanticsLabel: semanticsLabel,
        height: size,
        width: size,
        color: color,
      ),
    );
  }
}
