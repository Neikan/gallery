// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular_state.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent_state.dart';
import 'package:gallery_app/presentation/consts/enums.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/routes.dart';
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_bottom_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_data_empty.dart';
import 'package:gallery_app/presentation/ui/components/g_image.dart';
import 'package:gallery_app/presentation/ui/components/g_loader.dart';
import 'package:gallery_app/presentation/ui/components/g_refresh.dart';
import 'package:gallery_app/presentation/ui/components/g_text_field.dart';

part 'components/g_grid_card.dart';
part 'components/g_grid.dart';
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
          elevation: 0.0,
          title: GFieldText(
            padding: const EdgeInsets.only(top: 10.0),
            labelText: labelsGallery[keyFieldSearch]!,
            suffixWidget: IconButton(
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
