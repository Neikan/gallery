// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';

abstract class RepositoryGallery {
  const RepositoryGallery();

  Future<List<ApiPhoto>> getData();
}
