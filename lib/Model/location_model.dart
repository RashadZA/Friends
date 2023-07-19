// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:friends/Model/coordinates_model.dart';
import 'package:friends/Model/street_model.dart';
import 'package:friends/Model/timezone_model.dart';

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  dynamic postcode;
  Coordinates? coordinates;
  Timezone? timezone;
  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  Location copyWith({
    Street? street,
    String? city,
    String? state,
    String? country,
    dynamic postcode,
    Coordinates? coordinates,
    Timezone? timezone,
  }) {
    return Location(
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      postcode: postcode ?? this.postcode,
      coordinates: coordinates ?? this.coordinates,
      timezone: timezone ?? this.timezone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street?.toMap(),
      'city': city,
      'state': state,
      'country': country,
      'postcode': postcode,
      'coordinates': coordinates?.toMap(),
      'timezone': timezone?.toMap(),
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      street: map['street'] != null
          ? Street.fromMap(map['street'] as Map<String, dynamic>)
          : null,
      city: map['city'] != null ? map['city'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
      postcode: map['postcode'] != null ? map['postcode'] as dynamic : null,
      coordinates: map['coordinates'] != null
          ? Coordinates.fromMap(map['coordinates'] as Map<String, dynamic>)
          : null,
      timezone: map['timezone'] != null
          ? Timezone.fromMap(map['timezone'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Location(street: $street, city: $city, state: $state, country: $country, postcode: $postcode, coordinates: $coordinates, timezone: $timezone)';
  }

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;

    return other.street == street &&
        other.city == city &&
        other.state == state &&
        other.country == country &&
        other.postcode == postcode &&
        other.coordinates == coordinates &&
        other.timezone == timezone;
  }

  @override
  int get hashCode {
    return street.hashCode ^
        city.hashCode ^
        state.hashCode ^
        country.hashCode ^
        postcode.hashCode ^
        coordinates.hashCode ^
        timezone.hashCode;
  }
}
