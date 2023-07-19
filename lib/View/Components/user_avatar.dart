import 'package:flutter/material.dart';
import 'package:friends/Utils/design_utils.dart';
import 'package:friends/Utils/select_image.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    this.imageUrl,
    this.radius = defaultUserAvatarRadius,
    this.color,
  }) : super(key: key);

  final double radius;
  final String? imageUrl;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color ?? AppColors.transparent,
        shape: BoxShape.circle,
      ),
      child: selectAPIImager(image: imageUrl),
    );
  }
}
