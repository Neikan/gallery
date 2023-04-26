// Project imports:
import 'package:gallery_app/data/models/api_photo/api_photo.dart';
import 'package:gallery_app/data/repositories/repository_photo/repository_photo.dart';
import 'package:gallery_app/data/services/service_http.dart';

class RepositoryPhotoImp extends RepositoryPhoto {
  const RepositoryPhotoImp();

  @override
  Future<ApiPhoto?> getData(String id) async {
    ApiPhoto? photo;

    final response = await ServiceHttp.instance.get(id);

    if (response.statusCode == 200) {
      photo = ApiPhoto.fromJson(response.data);
    }

    return photo;
  }
}
