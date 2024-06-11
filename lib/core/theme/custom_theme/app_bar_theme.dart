import 'package:blog_application/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppAppBarTheme {
  AppAppBarTheme._();
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColor.backgroundColor,
    surfaceTintColor: AppColor.backgroundColor,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
