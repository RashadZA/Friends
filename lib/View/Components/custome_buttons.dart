import 'package:flutter/material.dart';
import 'package:friends/Utils/design_utils.dart';

Widget cardButton({
  double? paddingForAll,
  required Function onTap,
  Color? buttonBackGroundColor,
  double? buttonWidth,
  double? buttonHeight,
  Color? buttonSplashColor,
  double? buttonBorderRadius,
  required Widget buttonChild,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.all(
        Radius.circular(buttonBorderRadius ?? defaultBorderRadius)),
    child: Material(
      color: buttonBackGroundColor ?? AppColors.white,
      child: InkWell(
        onTap: () => onTap(),
        splashColor: buttonSplashColor ?? AppColors.blueAccent,
        child: Container(
          width: buttonWidth ?? defaultIconButtonWidth,
          height: buttonHeight ?? defaultIconButtonHeight,
          padding: EdgeInsets.all(paddingForAll ?? defaultIconButtonAllPadding),
          decoration: BoxDecoration(
            color: AppColors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(buttonBorderRadius ?? defaultBorderRadius),
            ),
          ),
          child: buttonChild,
        ),
      ),
    ),
  );
}
