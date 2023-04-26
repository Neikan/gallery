// Flutter imports:
import 'package:flutter/material.dart';

class GImageAsset extends StatelessWidget {
  final int image;

  const GImageAsset({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(5.0),
      ),
      child: Image.asset(
        'assets/images/space_1.jpg',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
