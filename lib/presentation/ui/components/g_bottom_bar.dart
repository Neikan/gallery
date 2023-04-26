// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/common.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/routes.dart';
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_bottom_bar_dialog/g_bottom_bar_dialog.dart';
import 'package:gallery_app/presentation/ui/components/g_icon.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

class GBottomBar extends StatelessWidget {
  const GBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;

    final isGallery = currentRoute == routeGallery;
    final isProfile = currentRoute == routeProfile;

    void handleTap(int index) {
      if (index == 0 && !isGallery) {
        Navigator.pushNamed(context, routeGallery);
      }

      if (index == 1) {
        showDialog<dynamic>(
          context: context,
          builder: (_) => const GBottomBarDialog(),
        );
      }

      if (index == 2 && !isProfile) {
        Navigator.pushNamed(context, routeProfile);
      }
    }

    return SizedBox(
      height: heightBottomBar,
      child: BottomNavigationBar(
        onTap: handleTap,
        items: [
          BottomNavigationBarItem(
            icon: GIcon(
              name: iconsBottomBar[routeGallery],
              color: isGallery ? colors.brand : colors.gray,
            ),
            label: labelsBottomBar[routeGallery],
          ),
          BottomNavigationBarItem(
            icon: GIcon(
              name: iconsBottomBar[keyButtonAddPhoto],
            ),
            label: labelsBottomBar[keyButtonAddPhoto],
          ),
          BottomNavigationBarItem(
            icon: GIcon(
              name: iconsBottomBar[routeProfile],
              color: isProfile ? colors.brand : colors.gray,
            ),
            label: labelsBottomBar[routeProfile],
          ),
        ],
      ),
    );
  }
}
