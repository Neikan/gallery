// Flutter imports:
import 'package:flutter/material.dart';

class GDivider extends StatelessWidget {
  final EdgeInsets? padding;

  const GDivider({
    super.key,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: const Divider(),
    );
  }
}
