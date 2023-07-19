// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Picture {
  String? large;
  String? medium;
  String? thumbnail;
  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  Picture copyWith({
    String? large,
    String? medium,
    String? thumbnail,
  }) {
    return Picture(
      large: large ?? this.large,
      medium: medium ?? this.medium,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'large': large,
      'medium': medium,
      'thumbnail': thumbnail,
    };
  }

  factory Picture.fromMap(Map<String, dynamic> map) {
    return Picture(
      large: map['large'] != null ? map['large'] as String : null,
      medium: map['medium'] != null ? map['medium'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Picture.fromJson(String source) =>
      Picture.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Picture(large: $large, medium: $medium, thumbnail: $thumbnail)';

  @override
  bool operator ==(covariant Picture other) {
    if (identical(this, other)) return true;

    return other.large == large &&
        other.medium == medium &&
        other.thumbnail == thumbnail;
  }

  @override
  int get hashCode => large.hashCode ^ medium.hashCode ^ thumbnail.hashCode;
}
