// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Coordinates {
  String? latitude;
  String? longitude;
  Coordinates({
    this.latitude,
    this.longitude,
  });

  Coordinates copyWith({
    String? latitude,
    String? longitude,
  }) {
    return Coordinates(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Coordinates.fromMap(Map<String, dynamic> map) {
    return Coordinates(
      latitude: map['latitude'] != null ? map['latitude'] as String : null,
      longitude: map['longitude'] != null ? map['longitude'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Coordinates.fromJson(String source) =>
      Coordinates.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Coordinates(latitude: $latitude, longitude: $longitude)';

  @override
  bool operator ==(covariant Coordinates other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
