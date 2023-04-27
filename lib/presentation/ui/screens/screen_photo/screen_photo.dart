// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo.dart';
import 'package:gallery_app/domain/blocs/bloc_photo/bloc_photo_state.dart';
import 'package:gallery_app/presentation/ui/components/g_app_bar.dart';
import 'package:gallery_app/presentation/ui/components/g_error_data.dart';
import 'package:gallery_app/presentation/ui/components/g_loader.dart';

class ScreenPhoto extends StatelessWidget {
  final String title;

  const ScreenPhoto({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UiAppBar(),
      body: SafeArea(
        child: BlocBuilder<BlocPhoto, BlocPhotoState>(
          builder: (_, state) => state.when(
            loading: () => const GLoader(),
            loaded: (photo) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [],
              ),
            ),
            error: (message) => GErrorData(message: message),
          ),
        ),
      ),
    );
  }
}
