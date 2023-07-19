// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Name {
  String? title;
  String? first;
  String? last;
  Name({
    this.title,
    this.first,
    this.last,
  });

  Name copyWith({
    String? title,
    String? first,
    String? last,
  }) {
    return Name(
      title: title ?? this.title,
      first: first ?? this.first,
      last: last ?? this.last,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'first': first,
      'last': last,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      title: map['title'] != null ? map['title'] as String : null,
      first: map['first'] != null ? map['first'] as String : null,
      last: map['last'] != null ? map['last'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) =>
      Name.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Name(title: $title, first: $first, last: $last)';

  @override
  bool operator ==(covariant Name other) {
    if (identical(this, other)) return true;

    return other.title == title && other.first == first && other.last == last;
  }

  @override
  int get hashCode => title.hashCode ^ first.hashCode ^ last.hashCode;
}
