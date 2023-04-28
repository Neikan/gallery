// Project imports:
import 'package:gallery_app/data/consts/urls.dart';
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/data/services/service_http.dart';

class RepositoryGalleryImp extends RepositoryGallery {
  const RepositoryGalleryImp();

  @override
  Future<AppPhotos?> getData({
    Map<String, dynamic>? queryParameters,
  }) async {
    AppPhotos? photos;

    final response = await ServiceHttp.instance.get(
      urlPhotos,
      queryParameters: queryParameters,
    );

    if (response.statusCode == 200) {
      photos = AppPhotos.fromJson(response.data);
    }

    return photos;
  }
}
