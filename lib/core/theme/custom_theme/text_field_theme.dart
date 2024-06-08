import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class AppTextFieldTheme{
  AppTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColor.primaryColor,
    suffixIconColor: AppColor.primaryColor,
    labelStyle: const TextStyle().copyWith(fontSize: 13, color: AppColor.textColor),
    hintStyle: const TextStyle().copyWith(fontSize: 13, color: AppColor.textColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: AppColor.primaryColor),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 1, color: AppColor.primaryColor),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 1, color: AppColor.primaryColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 1, color: AppColor.primaryColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}