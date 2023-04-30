// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/ui/components/g_divider.dart';
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

class UiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title, leading;
  final List<Widget>? actions, tabs;
  final bool? withDivider;

  const UiAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.tabs,
    this.withDivider,
  });

  @override
  Size get preferredSize => Size.fromHeight(
        title != null && tabs != null ? heightAppBarWithTabs : heightAppBar,
      );

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: title,
      leading: leading,
      actions: actions,
      bottom: _buildBottom(),
    );
  }

  PreferredSizeWidget? _buildBottom() {
    return PreferredSize(
      preferredSize: preferredSize,
      child: tabs != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TabBar(tabs: tabs!),
            )
          : withDivider == true
              ? const GDivider()
              : const SizedBox(),
    );
  }
}
