// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Login {
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;
  Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  Login copyWith({
    String? uuid,
    String? username,
    String? password,
    String? salt,
    String? md5,
    String? sha1,
    String? sha256,
  }) {
    return Login(
      uuid: uuid ?? this.uuid,
      username: username ?? this.username,
      password: password ?? this.password,
      salt: salt ?? this.salt,
      md5: md5 ?? this.md5,
      sha1: sha1 ?? this.sha1,
      sha256: sha256 ?? this.sha256,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'username': username,
      'password': password,
      'salt': salt,
      'md5': md5,
      'sha1': sha1,
      'sha256': sha256,
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      uuid: map['uuid'] != null ? map['uuid'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      salt: map['salt'] != null ? map['salt'] as String : null,
      md5: map['md5'] != null ? map['md5'] as String : null,
      sha1: map['sha1'] != null ? map['sha1'] as String : null,
      sha256: map['sha256'] != null ? map['sha256'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) =>
      Login.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Login(uuid: $uuid, username: $username, password: $password, salt: $salt, md5: $md5, sha1: $sha1, sha256: $sha256)';
  }

  @override
  bool operator ==(covariant Login other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.username == username &&
        other.password == password &&
        other.salt == salt &&
        other.md5 == md5 &&
        other.sha1 == sha1 &&
        other.sha256 == sha256;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
        username.hashCode ^
        password.hashCode ^
        salt.hashCode ^
        md5.hashCode ^
        sha1.hashCode ^
        sha256.hashCode;
  }
}
