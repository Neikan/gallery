// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_media_object.g.dart';

@JsonSerializable()
class ApiMediaObject {
  final int id;
  final String file, name;

  ApiMediaObject({
    required this.id,
    required this.file,
    required this.name,
  });

  factory ApiMediaObject.fromJson(Map<String, dynamic> json) =>
      _$ApiMediaObjectFromJson(json);

  Map<String, dynamic> toJson() => _$ApiMediaObjectToJson(this);
}
