import 'package:flutter/material.dart';
import 'package:food_splash_animation/constants/color_constants.dart';
import 'package:food_splash_animation/constants/string_constants.dart';
import 'package:food_splash_animation/views/splash_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.bgColor,
        primaryColor: AppColor.bgColor,
      ),
      home: const SplashView(),
    );
  }
}
