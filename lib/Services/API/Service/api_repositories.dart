import 'dart:async';
import 'package:flutter/material.dart';
import 'package:friends/Model/response_model.dart';
import 'package:friends/Services/API/Service/api_call.dart';
import 'package:get/get.dart';

class APIRepository {
  final APICall apiCall = Get.put(APICall());

  void dispose() {
    apiCall.dispose();
  }

  Future<FriendListResponseModel> friendListResponse() async {
    try {
      return await apiCall.friendListResponse();
    } catch (e) {
      debugPrint(e.toString());
    }
    return FriendListResponseModel.fromMap({});
  }
}
