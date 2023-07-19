// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Id {
  String? name;
  String? value;
  Id({
    this.name,
    this.value,
  });

  Id copyWith({
    String? name,
    String? value,
  }) {
    return Id(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory Id.fromMap(Map<String, dynamic> map) {
    return Id(
      name: map['name'] != null ? map['name'] as String : null,
      value: map['value'] != null ? map['value'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Id.fromJson(String source) =>
      Id.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Id(name: $name, value: $value)';

  @override
  bool operator ==(covariant Id other) {
    if (identical(this, other)) return true;

    return other.name == name && other.value == value;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
