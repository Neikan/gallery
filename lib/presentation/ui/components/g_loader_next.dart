// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/components/g_loader.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;

class GLoaderNext extends StatefulWidget {
  final bool isLoading;

  const GLoaderNext({
    super.key,
    required this.isLoading,
  });

  @override
  State<GLoaderNext> createState() => _GLoaderNextState();
}

class _GLoaderNextState extends State<GLoaderNext> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isLoading ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const GLoader(
          color: colors.gray,
          padding: EdgeInsets.all(24.0),
        ),
      ),
    );
  }
}
