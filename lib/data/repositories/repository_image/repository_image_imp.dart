// Dart imports:
import 'dart:io';
import 'dart:typed_data';

// Package imports:
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

// Project imports:
import 'package:gallery_app/data/consts/urls.dart';
import 'package:gallery_app/data/models/api_media_object/api_media_object.dart';
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';
import 'package:gallery_app/data/repositories/repository_image/repository_image.dart';
import 'package:gallery_app/data/services/service_http.dart';

const _cacheDuration = Duration(days: 7);

class RepositoryImageImp extends RepositoryImage {
  RepositoryImageImp();

  @override
  Future<File?> getData(ApiImage? image) async {
    if (image != null) {
      final fileInfo = await DefaultCacheManager().getFileFromCache(image.name);

      if (fileInfo != null) return fileInfo.file;

      final response =
          await ServiceHttp.instance.get('$urlMediaObjects/${image.id}');

      if (response.statusCode == 200) {
        final mediaObject = ApiMediaObject.fromJson(response.data);

        UriData? data = Uri.parse(mediaObject.file).data;

        if (data != null) {
          Uint8List uint8list = data.contentAsBytes();

          await DefaultCacheManager().putFile(
            image.name,
            uint8list,
            maxAge: _cacheDuration,
          );

          final fileInfo =
              await DefaultCacheManager().getFileFromCache(image.name);

          return fileInfo?.file;
        }
      }
    }

    return null;
  }
}
