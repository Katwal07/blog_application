import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButtonTheme{
  AppTextButtonTheme._();
  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      elevation: 0,
      textStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,),
    )
  );
}