// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/components/g_loader.dart';

class GRefresh extends StatefulWidget {
  final Widget child;
  final Future<dynamic> Function() onRefresh;

  const GRefresh({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  @override
  State<GRefresh> createState() => _GRefreshState();
}

class _GRefreshState extends State<GRefresh>
    with SingleTickerProviderStateMixin {
  static const _indicatorSize = 108.0;

  ScrollDirection prevScrollDirection = ScrollDirection.idle;

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      offsetToArmed: _indicatorSize,
      onRefresh: widget.onRefresh,
      completeStateDuration: const Duration(seconds: 2),
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        return Stack(
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                if (controller.scrollingDirection == ScrollDirection.reverse &&
                    prevScrollDirection == ScrollDirection.forward) {
                  controller.stopDrag();
                }

                prevScrollDirection = controller.scrollingDirection;

                final height = controller.value * _indicatorSize;

                return SizedBox(
                  height: height,
                  child: const GLoader(),
                );
              },
            ),
            AnimatedBuilder(
              builder: (context, _) {
                return Transform.translate(
                  offset: Offset(0.0, controller.value * _indicatorSize),
                  child: child,
                );
              },
              animation: controller,
            ),
          ],
        );
      },
      child: widget.child,
    );
  }
}
