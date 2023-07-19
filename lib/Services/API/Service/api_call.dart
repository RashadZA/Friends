import 'dart:async';

import 'package:friends/Model/response_model.dart';
import 'package:friends/Services/API/Helper/base_service.dart';



class APICall with BaseService {
  void dispose() {}

  FutureOr<FriendListResponseModel> friendListResponse() async {
    return tryOrCatch<FriendListResponseModel>(() async {
      final response = await dio.get(
        '/api/?results=10'
      );
      return FriendListResponseModel.fromMap(response.data);
    });
  }
}