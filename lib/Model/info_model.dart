// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Info {
  String? seed;
  int? results;
  int? page;
  String? version;
  Info({
    this.seed,
    this.results,
    this.page,
    this.version,
  });

  Info copyWith({
    String? seed,
    int? results,
    int? page,
    String? version,
  }) {
    return Info(
      seed: seed ?? this.seed,
      results: results ?? this.results,
      page: page ?? this.page,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seed': seed,
      'results': results,
      'page': page,
      'version': version,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      seed: map['seed'] != null ? map['seed'] as String : null,
      results: map['results'] != null ? map['results'] as int : null,
      page: map['page'] != null ? map['page'] as int : null,
      version: map['version'] != null ? map['version'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) =>
      Info.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Info(seed: $seed, results: $results, page: $page, version: $version)';
  }

  @override
  bool operator ==(covariant Info other) {
    if (identical(this, other)) return true;

    return other.seed == seed &&
        other.results == results &&
        other.page == page &&
        other.version == version;
  }

  @override
  int get hashCode {
    return seed.hashCode ^ results.hashCode ^ page.hashCode ^ version.hashCode;
  }
}
