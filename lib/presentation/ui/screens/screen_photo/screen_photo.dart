// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/repositories/repository_image/repository_image_imp.dart';
import 'package:gallery_app/domain/blocs/bloc_image/bloc_image.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo_events.dart';
import 'package:gallery_app/domain/states/bloc_image_state/bloc_image_state.dart';
import 'package:gallery_app/domain/states/bloc_photo_state/bloc_photo_state.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_bottom_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_data_empty.dart';
import 'package:gallery_app/presentation/ui/components/g_loader.dart';
import 'package:gallery_app/presentation/ui/components/g_refresh.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

part 'components/g_photo.dart';
part 'components/g_photo_date.dart';
part 'components/g_photo_description.dart';
part 'components/g_photo_image.dart';
part 'components/g_photo_image_data.dart';
part 'components/g_photo_image_error.dart';
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
