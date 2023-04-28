// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/enums.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_divider.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/decorations.dart';
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

part 'g_bottom_bar_dialog_action.dart';

class GBottomBarDialog extends StatelessWidget {
  const GBottomBarDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _GBottomBarDialogAction(
            title: labelsBottomBarActions[keyButtonOpenGallery]!,
            borderType: InkBorderEnum.top,
          ),
          const GDivider(),
          _GBottomBarDialogAction(
            title: labelsBottomBarActions[keyButtonAddPhoto]!,
            borderType: InkBorderEnum.bottom,
          ),
        ],
      ),
      actions: [
        _GBottomBarDialogAction(
          title: labelsBottomBarActions[keyButtonCancel]!,
          color: colors.brand,
          height: heightDialogAction,
        ),
      ],
    );
  }
}
