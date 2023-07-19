import 'package:flutter/material.dart';
import 'package:friends/Utils/design_utils.dart';
import 'package:friends/View/Components/contants.dart';

class Unknown404Screen extends StatelessWidget {
  const Unknown404Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryShadowColor,
      body: Center(
        child: Text(
          '404',
          style: TextThemeX.text18,
        ).defaultContainer(),
      ),
    );
  }
}
