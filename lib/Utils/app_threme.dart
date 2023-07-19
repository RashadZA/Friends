import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friends/Utils/design_utils.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColor,
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.primaryShadowColor,
    hintColor: AppColors.primaryColor.withOpacity(.4),
    iconTheme: const IconThemeData(size: 24),
    appBarTheme: AppBarTheme(
      elevation: 2,
      toolbarHeight: appBarHeight,
      titleTextStyle: TextThemeX.text18.copyWith(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: AppColors.blue,
    ),
    textSelectionTheme:
    TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      primaryColor: AppColors.primaryColor,
      barBackgroundColor: AppColors.primaryShadowColor,
      scaffoldBackgroundColor: AppColors.primaryShadowColor,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
          fontSize: 14,
          color: AppColors.white,
          fontFamily: getSFProFontFamily,
        ),
        primaryColor: AppColors.primaryColor,
      ),
    ),
  );
}