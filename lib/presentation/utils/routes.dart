// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery_imp.dart';
import 'package:gallery_app/data/repositories/repository_photo/repository_photo_imp.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery/bloc_gallery.dart';
import 'package:gallery_app/domain/blocs/bloc_gallery/bloc_gallery_events.dart';
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
            return BlocProvider<BlocGallery>(
              create: (_) => BlocGallery(repo: const RepositoryGalleryImp())
                ..add(BlocGalleryEventInit()),
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
