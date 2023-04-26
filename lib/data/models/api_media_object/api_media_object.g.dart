// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_media_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiMediaObject _$ApiMediaObjectFromJson(Map<String, dynamic> json) =>
    ApiMediaObject(
      id: json['id'] as int,
      file: json['file'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ApiMediaObjectToJson(ApiMediaObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'name': instance.name,
    };
