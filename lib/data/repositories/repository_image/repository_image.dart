// Dart imports:
import 'dart:io';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';

abstract class RepositoryImage {
  const RepositoryImage();

  Future<File?> getData(ApiImage? image);
}
