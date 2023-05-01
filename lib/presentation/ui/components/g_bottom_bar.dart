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
    final isPhoto = currentRoute == routePhoto;
    final isProfile = currentRoute == routeProfile;

    void handleTap(int index) {
      if (index == 0 && !isGallery && !isPhoto) {
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

    const padding = EdgeInsets.only(bottom: 5.0);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border(
          top: BorderSide(color: colors.grayBottomBar),
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          height: heightBottomBar,
          child: BottomNavigationBar(
            elevation: 0.0,
            onTap: handleTap,
            items: [
              BottomNavigationBarItem(
                icon: GIcon(
                  name: iconsBottomBar[routeGallery],
                  color: isGallery || isPhoto ? colors.brand : colors.gray,
                  padding: padding,
                ),
                label: labelsBottomBar[routeGallery],
              ),
              BottomNavigationBarItem(
                icon: GIcon(
                  name: iconsBottomBar[keyButtonAddPhoto],
                  padding: padding,
                ),
                label: labelsBottomBar[keyButtonAddPhoto],
              ),
              BottomNavigationBarItem(
                icon: GIcon(
                  name: iconsBottomBar[routeProfile],
                  color: isProfile ? colors.brand : colors.gray,
                  padding: padding,
                ),
                label: labelsBottomBar[routeProfile],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
