import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/app_text_strings.dart';
import 'core/theme/app_theme.dart';
import 'presentation/router/router_import.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context,child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppText.appTitle,
          themeMode: ThemeMode.light,
          theme: AppTheme.lightTheme,
          routerConfig: _appRouter.config(),
        );
      }
    );
  }
}