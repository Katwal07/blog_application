import 'package:blog_application/core/constants/app_text_strings.dart';
import 'package:blog_application/core/theme/app_theme.dart';
import 'package:blog_application/presentation/router/router_import.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppText.appTitle,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      routerConfig: _appRouter.config(),
    );
  }
}