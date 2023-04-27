// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_data_empty.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UiAppBar(),
      body: SafeArea(
        child: GDataEmpty(
          message: labelNotFound,
        ),
      ),
    );
  }
}
