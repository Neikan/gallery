// Project imports:
import 'package:gallery_app/presentation/consts/enums.dart';
import 'package:gallery_app/presentation/consts/keys.dart';
import 'package:gallery_app/presentation/consts/routes.dart';

const String labelButtonGoTo = 'Подробнее';

final labelsGallery = <String, String>{
  keyFieldSearch: 'Search',
  TabGalleryEnum.recent.name: 'New',
  TabGalleryEnum.popular.name: 'Popular',
};

final labelsBottomBar = <String, String>{
  routeGallery: 'Feed',
  keyButtonAddPhoto: 'Add photo',
  routeProfile: 'Profile',
};

final labelsBottomBarActions = <String, String>{
  keyButtonOpenGallery: 'Сhoose from gallery',
  keyButtonAddPhoto: 'Take a photo',
  keyButtonCancel: 'Cancel',
};

const labelNotFound = 'Page not found';

const labelsError = <String, String>{
  keyTitle: 'Oh shucks!',
  keyContent:
      'Slow or no internet connection.\nPlease check your internet settings',
};
