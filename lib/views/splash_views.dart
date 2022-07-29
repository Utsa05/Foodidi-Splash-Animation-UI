import 'package:flutter/material.dart';
import 'package:food_splash_animation/constants/color_constants.dart';
import 'package:food_splash_animation/views/components/bottom_side.dart';
import 'package:food_splash_animation/views/components/header_items.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: TweenAnimationBuilder<Color?>(
          tween: ColorTween(begin: AppColor.bgSoftColor, end: AppColor.bgColor),
          duration: const Duration(seconds: 3),
          builder: (context, color, child) {
            return Container(
              height: size.height,
              width: size.width,
              color: color,
              child: Column(
                children: [HeaderFodeItems(size: size), BottomSide(size: size)],
              ),
            );
          }),
    );
  }
}
