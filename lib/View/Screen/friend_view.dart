import 'package:flutter/material.dart';
import 'package:friends/Utils/design_utils.dart';
import 'package:friends/View/Components/friend_card.dart';
import 'package:friends/View/Controller/friends_controller.dart';
import 'package:get/get.dart';

class Friend extends GetWidget<FriendsController> {
  const Friend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: Text(
            friend,
            style: TextThemeX.text18,
          ),
        ),
        body: SingleChildScrollView(
            child: FriendCard(
          friend: controller.friendDetails,
        ).paddingAll(defaultAllPadding)),
      ),
    );
  }
}
