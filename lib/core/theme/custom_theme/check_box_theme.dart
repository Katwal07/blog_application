import 'package:blog_application/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppCheckBoxTheme{
  AppCheckBoxTheme._();
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return AppColor.primaryColor;
      }else{
        return Colors.transparent;
      }
    }),
  );
}