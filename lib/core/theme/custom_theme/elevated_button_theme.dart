import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: AppColor.primaryColor,
    side: const BorderSide(color: AppColor.borderPrimaryColor),
    padding: const EdgeInsets.symmetric(vertical: 10),
    textStyle:  TextStyle(
        fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
  ));
}
