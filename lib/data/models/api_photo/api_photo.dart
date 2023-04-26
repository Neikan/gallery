// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:gallery_app/data/models/api_photo/api_image/api_image.dart';

part 'api_photo.g.dart';

@JsonSerializable()
class ApiPhoto {
  final int id;
  final String name;
  final String dateCreate;
  final String description;
  @JsonKey(name: 'new')
  final bool recent;
  final bool popular;
  final ApiImage image;
  final String user;

  ApiPhoto({
    required this.dateCreate,
    required this.description,
    required this.id,
    required this.image,
    required this.name,
    required this.popular,
    required this.recent,
    required this.user,
  });

  factory ApiPhoto.fromJson(Map<String, dynamic> json) =>
      _$ApiPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPhotoToJson(this);
}
