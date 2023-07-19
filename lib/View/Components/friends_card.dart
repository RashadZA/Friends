import 'package:flutter/material.dart';
import 'package:friends/Model/friend_model.dart';
import 'package:friends/Utils/design_utils.dart';
import 'package:friends/View/components/user_avatar.dart';

class FriendsCard extends StatelessWidget {
  final Friend friend;
  const FriendsCard({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultAllPadding),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: UserAvatar(
              imageUrl: friend.picture?.medium,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Name: ${friend.name?.title ?? ""} ${friend.name?.first ?? ""} ${friend.name?.last ?? ""}",
            maxLines: 3,
            style: TextThemeX.text16,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Country: ${friend.location?.country ?? ""}",
            maxLines: 2,
            style: TextThemeX.text16,
          ),
        ],
      ),
    );
  }
}
