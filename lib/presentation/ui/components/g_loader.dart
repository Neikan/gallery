// Dart imports:
import 'dart:math' as math;

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/components/g_icon.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;

class GLoader extends StatefulWidget {
  final Color? color;
  final double? size;
  final EdgeInsets? padding;

  const GLoader({
    super.key,
    this.color,
    this.padding,
    this.size,
  });

  @override
  State<GLoader> createState() => _GLoaderState();
}

class _GLoaderState extends State<GLoader> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: child,
          );
        },
        child: GIcon(
          name: 'loader',
          color: widget.color ?? colors.brand,
          padding: widget.padding,
          size: widget.size,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
