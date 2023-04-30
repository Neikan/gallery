// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo_events.dart';
import 'package:gallery_app/domain/states/bloc_photo_state/bloc_photo_state.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_bottom_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_data_empty.dart';
import 'package:gallery_app/presentation/ui/components/g_image/g_image.dart';
import 'package:gallery_app/presentation/ui/components/g_loader.dart';
import 'package:gallery_app/presentation/ui/components/g_refresh.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;

part 'components/g_photo.dart';
part 'components/g_photo_date.dart';
part 'components/g_photo_description.dart';
part 'components/g_photo_image.dart';
part 'components/g_photo_tags.dart';
part 'components/g_photo_title.dart';
part 'components/g_photo_user.dart';
part 'components/g_photo_views.dart';

class ScreenPhoto extends StatelessWidget {
  final int id;

  const ScreenPhoto({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    Future<void> handleRefresh() async {
      BlocProvider.of<BlocPhoto>(context).add(BlocPhotoEventInit(id));
    }

    return Scaffold(
      appBar: const UiAppBar(),
      body: SafeArea(
        child: BlocBuilder<BlocPhoto, BlocPhotoState>(
          builder: (_, state) => state.when(
            loading: () => const GLoader(),
            loaded: (photo) => _GPhoto(
              onRefresh: handleRefresh,
              photo: photo,
            ),
            error: (description) => GDataEmpty(
              onRefresh: handleRefresh,
              description: description,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const GBottomBar(),
    );
  }
}
