// Project imports:
import 'package:gallery_app/data/models/app_photos/app_photos.dart';
import 'package:gallery_app/domain/consts/keys.dart';

Map<String, dynamic> getGalleryParameters(
  AppPhotos state, {
  bool? isRecent,
  bool? isPopular,
}) {
  final queryParameters = <String, dynamic>{
    keyLimit: state.itemsPerPage,
    keyPage: state.currentPage,
  };

  if (isRecent == true) {
    queryParameters.addAll({
      keyRecent: isRecent,
    });
  }

  if (isPopular == true) {
    queryParameters.addAll({
      keyPopular: isPopular,
    });
  }

  return queryParameters;
}
