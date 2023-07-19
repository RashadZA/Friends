// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Dob {
  String? date;
  int? age;
  Dob({
    this.date,
    this.age,
  });

  Dob copyWith({
    String? date,
    int? age,
  }) {
    return Dob(
      date: date ?? this.date,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'age': age,
    };
  }

  factory Dob.fromMap(Map<String, dynamic> map) {
    return Dob(
      date: map['date'] != null ? map['date'] as String : null,
      age: map['age'] != null ? map['age'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dob.fromJson(String source) =>
      Dob.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Dob(date: $date, age: $age)';

  @override
  bool operator ==(covariant Dob other) {
    if (identical(this, other)) return true;

    return other.date == date && other.age == age;
  }

  @override
  int get hashCode => date.hashCode ^ age.hashCode;
}
