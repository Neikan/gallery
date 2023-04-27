// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';

abstract class RepositoryGallery {
  const RepositoryGallery();

  Future<AppPhotos?> getData({
    Map<String, dynamic>? queryParameters,
  });
}
