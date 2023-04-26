// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery/bloc_gallery.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery/bloc_gallery_state.dart';
import 'package:gallery_app/presentation/consts/enums.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/routes.dart';
import 'package:gallery_app/presentation/consts/translations.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_bottom_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_error_data.dart';
import 'package:gallery_app/presentation/ui/components/g_image.dart';
import 'package:gallery_app/presentation/ui/components/g_loader.dart';
import 'package:gallery_app/presentation/ui/components/g_text_field.dart';

part 'components/g_grid_card.dart';
part 'components/g_grid.dart';

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
        body: BlocBuilder<BlocGallery, BlocGalleryState>(
          builder: (_, state) => state.when(
            loading: () => const GLoader(),
            loaded: (photos) => _GGrid(photos: photos),
            error: (message) => GErrorData(message: message),
          ),
        ),
        bottomNavigationBar: const GBottomBar(),
      ),
    );
  }
}
