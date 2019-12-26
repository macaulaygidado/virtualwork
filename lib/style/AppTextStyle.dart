
import 'package:VirtualWork/style/AppFontSizes.dart';
import 'package:flutter/material.dart';

class AppTextStyle{

  static TextStyle inputStyle(BuildContext context) {
    return TextStyle(
        fontFamily: "Metropolis",
        fontFamilyFallback: ["RobotoRegular"],
        fontSize: AppFontSizes.medium,
        fontWeight: FontWeight.w700,
        color: Colors.grey);
  }


}
