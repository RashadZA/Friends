// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:friends/Model/info_model.dart';
import 'package:friends/Model/friend_model.dart';

class FriendListResponseModel {
  List<Friend>? results;
  Info? info;
  FriendListResponseModel({
    this.results,
    this.info,
  });

  FriendListResponseModel copyWith({
    List<Friend>? results,
    Info? info,
  }) {
    return FriendListResponseModel(
      results: results ?? this.results,
      info: info ?? this.info,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': results?.map((x) => x.toMap()).toList(),
      'info': info?.toMap(),
    };
  }

  factory FriendListResponseModel.fromMap(Map<String, dynamic> map) {
    return FriendListResponseModel(
      results: map['results'] != null
          ? List<Friend>.from(
              (map['results'] as List).map<Friend?>(
                (x) => Friend.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      info: map['info'] != null
          ? Info.fromMap(map['info'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FriendListResponseModel.fromJson(String source) =>
      FriendListResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ResponseModel(results: $results, info: $info)';

  @override
  bool operator ==(covariant FriendListResponseModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.results, results) && other.info == info;
  }

  @override
  int get hashCode => results.hashCode ^ info.hashCode;
}
