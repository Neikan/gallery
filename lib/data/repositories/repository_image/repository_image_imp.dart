// Dart imports:
import 'dart:io';
import 'dart:typed_data';

// Package imports:
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:gallery_app/data/consts/urls.dart';
import 'package:gallery_app/data/models/api_media_object/api_media_object.dart';
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';
import 'package:gallery_app/data/repositories/repository_image/repository_image.dart';
import 'package:gallery_app/data/services/service_http.dart';

const String _directoryImages = 'images';

class RepositoryMediaObjectImp extends RepositoryMediaObject {
  RepositoryMediaObjectImp();

  late Directory _directory;

  @override
  Future<void> init() async {
    await _getDirectory();
  }

  @override
  Future<String> getData(ApiImage? image) async {
    if (image != null) {
      final filename = '${_directory.path}${image.name}';

      if (await File(filename).exists()) {
        return filename;
      }

      final response =
          await ServiceHttp.instance.get('$urlMediaObjects/${image.id}');

      if (response.statusCode == 200) {
        final mediaObject = ApiMediaObject.fromJson(response.data);

        UriData? data = Uri.parse(mediaObject.file).data;
        Uint8List uint8list = data!.contentAsBytes();

        ByteBuffer buffer = uint8list.buffer;
        ByteData byteData = ByteData.view(uint8list.buffer);

        final file = File(filename);

        await file.create();

        await file.writeAsBytes(buffer.asUint8List(
          byteData.offsetInBytes,
          byteData.lengthInBytes,
        ));

        return filename;
      }
    }

    return '';
  }

  Future<void> _getDirectory() async {
    final directoryApp = await getApplicationDocumentsDirectory();

    _directory = Directory('${directoryApp.path}/$_directoryImages/');

    if (!await _directory.exists()) {
      await _directory.create(recursive: true);
    }
  }
}
