// Project imports:
import 'package:gallery_app/data/consts/urls.dart';
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/repositories/repository_gallery/repository_gallery.dart';
import 'package:gallery_app/data/services/service_http.dart';

class RepositoryGalleryImp extends RepositoryGallery {
  const RepositoryGalleryImp();

  @override
  Future<List<ApiPhoto>> getData() async {
    List<ApiPhoto> photos = [];

    final response = await ServiceHttp.instance.get(urlPhotos);

    if (response.statusCode == 200) {
      photos = List<dynamic>.from(response.data['data'])
          .map((photo) => ApiPhoto.fromJson(photo))
          .toList();
    }

    return photos;
  }
}
