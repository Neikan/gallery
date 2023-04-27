// Project imports:
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';

abstract class RepositoryMediaObject {
  const RepositoryMediaObject();

  Future<void> init();

  Future<String> getData(ApiImage? image);
}
