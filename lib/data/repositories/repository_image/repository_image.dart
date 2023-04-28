// Project imports:
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';

abstract class RepositoryImage {
  const RepositoryImage();

  Future<void> init();

  Future<String> getData(ApiImage? image);
}
