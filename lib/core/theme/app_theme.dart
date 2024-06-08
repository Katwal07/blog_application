import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'custom_theme/app_bar_theme.dart';
import 'custom_theme/check_box_theme.dart';
import 'custom_theme/elevated_button_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );
}
