// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Street {
  int? number;
  String? name;
  Street({
    this.number,
    this.name,
  });

  Street copyWith({
    int? number,
    String? name,
  }) {
    return Street(
      number: number ?? this.number,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
    };
  }

  factory Street.fromMap(Map<String, dynamic> map) {
    return Street(
      number: map['number'] != null ? map['number'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Street.fromJson(String source) =>
      Street.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Street(number: $number, name: $name)';

  @override
  bool operator ==(covariant Street other) {
    if (identical(this, other)) return true;

    return other.number == number && other.name == name;
  }

  @override
  int get hashCode => number.hashCode ^ name.hashCode;
}
