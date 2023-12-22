import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thalassophilecoffe/config/app_colors.dart';
import 'package:thalassophilecoffe/config/app_strings.dart';
import 'package:thalassophilecoffe/views/login_page.dart';
import 'package:thalassophilecoffe/views/main_page.dart';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.appBackgroundColor,
        ),
        debugShowCheckedModeBanner: false,
        title: AppStrings.titleOfProject,
        home: LoginPage());
  }
}
