import 'package:flutter/material.dart';
import 'package:friends/Utils/app_assets.dart';

Image selectImage(String? image) {
  return image == null ? selectImage(AppImages.avatar) : Image.asset(image);
}

Image selectAPIImager({
  String? image,
  String? defaultImage,
}) {
  if ((image != null && image.isEmpty) || image == null) {
    return selectImage(defaultImage ?? AppImages.avatar);
  }
  Image imageFromNet = Image.network(
    image,
    fit: BoxFit.cover,
    errorBuilder: (context, error, stackTrace) =>
        selectImage(defaultImage ?? AppImages.avatar),
  );
  return imageFromNet;
}
