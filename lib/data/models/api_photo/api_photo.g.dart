// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPhoto _$ApiPhotoFromJson(Map<String, dynamic> json) => ApiPhoto(
      dateCreate: json['dateCreate'] as String,
      description: json['description'] as String,
      id: json['id'] as int,
      image: ApiImage.fromJson(json['image'] as Map<String, dynamic>),
      name: json['name'] as String,
      popular: json['popular'] as bool,
      recent: json['new'] as bool,
      user: json['user'] as String,
    );

Map<String, dynamic> _$ApiPhotoToJson(ApiPhoto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreate': instance.dateCreate,
      'description': instance.description,
      'new': instance.recent,
      'popular': instance.popular,
      'image': instance.image,
      'user': instance.user,
    };
