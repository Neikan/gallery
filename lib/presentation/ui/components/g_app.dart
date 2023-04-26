// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:gallery_app/presentation/consts/routes.dart';
import 'package:gallery_app/presentation/ui/styles/themes.dart';
import 'package:gallery_app/presentation/utils/routes.dart';

class GApp extends StatelessWidget {
  const GApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: routeGallery,
    );
  }
}
