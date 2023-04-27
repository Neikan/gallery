// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppPhotos _$$_AppPhotosFromJson(Map<String, dynamic> json) => _$_AppPhotos(
      countOfPages: json['countOfPages'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => ApiPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsPerPage: json['itemsPerPage'] as int? ?? 10,
      totalItems: json['totalItems'] as int,
    );

Map<String, dynamic> _$$_AppPhotosToJson(_$_AppPhotos instance) =>
    <String, dynamic>{
      'countOfPages': instance.countOfPages,
      'data': instance.data,
      'itemsPerPage': instance.itemsPerPage,
      'totalItems': instance.totalItems,
    };
