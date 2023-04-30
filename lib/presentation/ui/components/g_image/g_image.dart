// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/repositories/repository_image/repository_image_imp.dart';
import 'package:gallery_app/domain/blocs/bloc_image/bloc_image.dart';
import 'package:gallery_app/domain/states/bloc_image_state/bloc_image_state.dart';
import 'package:gallery_app/presentation/ui/styles/colors.dart' as colors;
import 'package:gallery_app/presentation/ui/styles/decorations.dart';
import 'package:gallery_app/presentation/ui/styles/sizes.dart';

part 'g_image_data.dart';
part 'g_image_error.dart';

class GImage extends StatelessWidget {
  final ApiPhoto photo;
  final double? height, width;
  final bool? isRoundedBorder;

  const GImage({
    super.key,
    required this.photo,
    this.height,
    this.width,
    this.isRoundedBorder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BlocImage(repo: RepositoryImageImp())
        ..add(
          (BlocGalleryPhotoEventInit(image: photo.image)),
        ),
      child: SizedBox(
        width: width,
        height: height,
        child: BlocBuilder<BlocImage, BlocImageState>(
          builder: (_, state) => state.when(
            loading: () => const SizedBox(),
            loaded: (file) => _GImageData(
              file: file,
              isRoundedBorder: isRoundedBorder,
            ),
            error: () => _GImageError(isRoundedBorder: isRoundedBorder),
          ),
        ),
      ),
    );
  }
}
