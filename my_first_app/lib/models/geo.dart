import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
class Geo {
  final String lat;
  final String lng;
  // final String? lat2;
  // final String? lng2;
  Geo({
    required this.lat,
    required this.lng,
    // this.lat2,
    // this.lng2,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
