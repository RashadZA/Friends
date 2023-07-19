// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:friends/Model/dob_model.dart';
import 'package:friends/Model/id_model.dart';
import 'package:friends/Model/location_model.dart';
import 'package:friends/Model/login_model.dart';
import 'package:friends/Model/name_model.dart';
import 'package:friends/Model/picture_model.dart';

class Friend {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Dob? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;
  Friend({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  Friend copyWith({
    String? gender,
    Name? name,
    Location? location,
    String? email,
    Login? login,
    Dob? dob,
    Dob? registered,
    String? phone,
    String? cell,
    Id? id,
    Picture? picture,
    String? nat,
  }) {
    return Friend(
      gender: gender ?? this.gender,
      name: name ?? this.name,
      location: location ?? this.location,
      email: email ?? this.email,
      login: login ?? this.login,
      dob: dob ?? this.dob,
      registered: registered ?? this.registered,
      phone: phone ?? this.phone,
      cell: cell ?? this.cell,
      id: id ?? this.id,
      picture: picture ?? this.picture,
      nat: nat ?? this.nat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'name': name?.toMap(),
      'location': location?.toMap(),
      'email': email,
      'login': login?.toMap(),
      'dob': dob?.toMap(),
      'registered': registered?.toMap(),
      'phone': phone,
      'cell': cell,
      'id': id?.toMap(),
      'picture': picture?.toMap(),
      'nat': nat,
    };
  }

  factory Friend.fromMap(Map<String, dynamic> map) {
    return Friend(
      gender: map['gender'] != null ? map['gender'] as String : null,
      name: map['name'] != null
          ? Name.fromMap(map['name'] as Map<String, dynamic>)
          : null,
      location: map['location'] != null
          ? Location.fromMap(map['location'] as Map<String, dynamic>)
          : null,
      email: map['email'] != null ? map['email'] as String : null,
      login: map['login'] != null
          ? Login.fromMap(map['login'] as Map<String, dynamic>)
          : null,
      dob: map['dob'] != null
          ? Dob.fromMap(map['dob'] as Map<String, dynamic>)
          : null,
      registered: map['registered'] != null
          ? Dob.fromMap(map['registered'] as Map<String, dynamic>)
          : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      cell: map['cell'] != null ? map['cell'] as String : null,
      id: map['id'] != null
          ? Id.fromMap(map['id'] as Map<String, dynamic>)
          : null,
      picture: map['picture'] != null
          ? Picture.fromMap(map['picture'] as Map<String, dynamic>)
          : null,
      nat: map['nat'] != null ? map['nat'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Friend.fromJson(String source) =>
      Friend.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Friend(gender: $gender, name: $name, location: $location, email: $email, login: $login, dob: $dob, registered: $registered, phone: $phone, cell: $cell, id: $id, picture: $picture, nat: $nat)';
  }

  @override
  bool operator ==(covariant Friend other) {
    if (identical(this, other)) return true;

    return other.gender == gender &&
        other.name == name &&
        other.location == location &&
        other.email == email &&
        other.login == login &&
        other.dob == dob &&
        other.registered == registered &&
        other.phone == phone &&
        other.cell == cell &&
        other.id == id &&
        other.picture == picture &&
        other.nat == nat;
  }

  @override
  int get hashCode {
    return gender.hashCode ^
        name.hashCode ^
        location.hashCode ^
        email.hashCode ^
        login.hashCode ^
        dob.hashCode ^
        registered.hashCode ^
        phone.hashCode ^
        cell.hashCode ^
        id.hashCode ^
        picture.hashCode ^
        nat.hashCode;
  }
}
