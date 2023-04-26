// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';

abstract class RepositoryPhoto {
  const RepositoryPhoto();

  Future<ApiPhoto?> getData(String id);
}
