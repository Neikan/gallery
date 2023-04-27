// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;

class GRefresh extends StatefulWidget {
  final GlobalKey<RefreshIndicatorState>? keyRefresh;
  final Widget child;
  final Future<dynamic> Function() onRefresh;

  const GRefresh({
    super.key,
    this.keyRefresh,
    required this.onRefresh,
    required this.child,
  });

  @override
  State<GRefresh> createState() => _RefreshWidgetState();
}

class _RefreshWidgetState extends State<GRefresh> {
  @override
  Widget build(BuildContext context) => RefreshIndicator(
        key: widget.keyRefresh,
        onRefresh: widget.onRefresh,
        color: colors.brand,
        child: widget.child,
      );
}
