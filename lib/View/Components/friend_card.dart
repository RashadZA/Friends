import 'package:flutter/material.dart';
import 'package:friends/Model/friend_model.dart';
import 'package:friends/Utils/design_utils.dart';
import 'package:friends/View/Components/contants.dart';
import 'package:friends/View/components/user_avatar.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FriendCard extends StatelessWidget {
  final Friend friend;
  const FriendCard({Key? key, required this.friend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: UserAvatar(
            radius: 200,
            imageUrl: friend.picture?.large,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Name: ${friend.name?.title ?? ""} ${friend.name?.first ?? ""} ${friend.name?.last ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Phone: ${friend.phone ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () async {
            String email = Uri.encodeComponent(friend.email ?? "");
            Uri mail = Uri.parse("mailto:$email");
            RxBool isEmailAppExist = false.obs;
            isEmailAppExist.value = await launchUrl(mail);
            if (isEmailAppExist.isFalse) {
              "Mail App didn't found in device".errorSnackBar();
            } else {
              Get.appUpdate();
            }
          },
          child: Text(
            "Email: ${friend.email ?? ""}",
            style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Street Number: ${friend.location?.street?.number ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Street Name: ${friend.location?.street?.name ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "City: ${friend.location?.city ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "State: ${friend.location?.state ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Country: ${friend.location?.country ?? ""}",
          style: TextThemeX.text16.copyWith(overflow: TextOverflow.visible),
        ),
      ],
    );
  }
}
