import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.sp, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.sp, fontWeight: FontWeight.w700, color: Colors.black),
    /// ---
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w700, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.sp, fontWeight: FontWeight.w400, color: Colors.black),
    /// ---
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.sp, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12.sp, fontWeight: FontWeight.w500, color: Colors.black),      
    /// ---
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.sp, fontWeight: FontWeight.normal, color: Colors.black),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.sp, fontWeight: FontWeight.normal, color: Colors.black),
  );
}
