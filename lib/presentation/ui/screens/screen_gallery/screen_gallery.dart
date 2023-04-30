// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/data/repositories/repository_image/repository_image_imp.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent.dart';
import 'package:gallery_app/domain/blocs/bloc_image/bloc_image.dart';
import 'package:gallery_app/domain/states/bloc_gallery_state/bloc_gallery_state.dart';
import 'package:gallery_app/domain/states/bloc_image_state/bloc_image_state.dart';
import 'package:gallery_app/presentation/consts/enums.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/routes.dart';
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_bottom_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_data_empty.dart';
import 'package:gallery_app/presentation/ui/components/g_loader.dart';
import 'package:gallery_app/presentation/ui/components/g_refresh.dart';
import 'package:gallery_app/presentation/ui/components/g_text_field.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/decorations.dart';
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

part 'components/g_grid_card/g_grid_card_photo.dart';
part 'components/g_grid_card/g_grid_card.dart';
part 'components/g_grid.dart';
part 'components/g_grid_card/g_image_data.dart';
part 'components/g_grid_card/g_image_error.dart';
part 'components/g_tab_popular.dart';
part 'components/g_tab_recent.dart';

class ScreenGallery extends StatelessWidget {
  const ScreenGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabGalleryEnum.values.length,
      child: Scaffold(
        appBar: UiAppBar(
          title: GFieldText(
            padding: const EdgeInsets.only(top: 10.0),
            labelText: labelsGallery[keyFieldSearch]!,
            suffixWidget: IconButton(
              // ToDo задел на будущее для выполнения поискового запроса
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
          tabs: [
            Tab(text: labelsGallery[TabGalleryEnum.recent.name]),
            Tab(text: labelsGallery[TabGalleryEnum.popular.name]),
          ],
        ),
        body: SafeArea(
          child: TabBarView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              _GTabRecent(),
              _GTabPopular(),
            ],
          ),
        ),
        bottomNavigationBar: const GBottomBar(),
      ),
    );
  }
}
