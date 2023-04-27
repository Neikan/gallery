// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery_imp.dart';
import 'package:gallery_app/data/repositories/repository_photo/repository_photo_imp.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_popular/bloc_gallery_popular.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery_recent/bloc_gallery_recent.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo_events.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/routes.dart';
import 'package:gallery_app/presentation/ui/screens/screen_gallery/screen_gallery.dart';
import 'package:gallery_app/presentation/ui/screens/screen_not_found.dart';
import 'package:gallery_app/presentation/ui/screens/screen_photo/screen_photo.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeGallery:
            const repo = RepositoryGalleryImp();

            return MultiBlocProvider(
              providers: [
                BlocProvider<BlocGalleryRecent>(
                  create: (_) => BlocGalleryRecent(repo: repo)
                    ..add(BlocGalleryRecentEventInit()),
                ),
                BlocProvider<BlocGalleryPopular>(
                  create: (_) => BlocGalleryPopular(repo: repo)
                    ..add(BlocGalleryPopularEventInit()),
                ),
              ],
              child: const ScreenGallery(),
            );

          case routePhoto:
            final arguments = settings.arguments as Map<String, ApiPhoto>;
            final photo = arguments[keyPhoto]!;

            return BlocProvider<BlocPhoto>(
              create: (_) => BlocPhoto(repo: const RepositoryPhotoImp())
                ..add(BlocPhotoEventInit(photo.id)),
              child: ScreenPhoto(title: photo.name),
            );

          default:
            return const ScreenNotFound();
        }
      },
    );
