// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/common.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_svg.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

class GErrorData extends StatelessWidget {
  final String message;

  const GErrorData({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const GSvg(
            name: nameErrorData,
            size: sizeErrorData,
            padding: EdgeInsets.all(30.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              labelsError[keyTitle]!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                height: 1.67,
                color: colors.gray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
