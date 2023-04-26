// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_image.g.dart';

@JsonSerializable()
class ApiImage {
  final int id;
  final String name;

  ApiImage({
    required this.id,
    required this.name,
  });

  factory ApiImage.fromJson(Map<String, dynamic> json) =>
      _$ApiImageFromJson(json);

  Map<String, dynamic> toJson() => _$ApiImageToJson(this);
}
