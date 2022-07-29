import 'package:flutter/material.dart';
import 'package:food_splash_animation/constants/assets_constants.dart';
import 'package:food_splash_animation/constants/color_constants.dart';
import 'package:food_splash_animation/widgets/circular_item.dart';

class HeaderFodeItems extends StatelessWidget {
  const HeaderFodeItems({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.5,
      child: Stack(children: [
        Positioned(
          top: size.height * 0.1,
          left: -5.0,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.orangeColor,
                hw: 0.3,
                padding: 0.06,
                image: AppAssets.foldburgerAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    -value! * 20,
                    0.0,
                  ),
                  child: child,
                );
              }),
        ),
        Positioned(
          top: size.height * 0.06,
          right: 20.0,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.bgSoftColor,
                hw: 0.14,
                padding: 0.02,
                image: AppAssets.chickenvegetableAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    0.0,
                    value! * 10,
                  ),
                  child: child,
                );
              }),
        ),
        Positioned(
          top: size.height * 0.15,
          right: size.width * 0.3,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.amberColor,
                hw: 0.25,
                padding: 0.025,
                image: AppAssets.burgerAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    0.0,
                    -value! * 10,
                  ),
                  child: child,
                );
              }),
        ),
        Positioned(
          top: size.height * 0.25,
          right: -5,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.whiteColor,
                hw: 0.19,
                padding: 0.025,
                image: AppAssets.coffeAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    value! * 10,
                    0.0,
                  ),
                  child: child,
                );
              }),
        ),
        Positioned(
          top: size.height * 0.3,
          left: 70,
          child: CircularItem(
              size: size,
              color: AppColor.bgSoftColor,
              hw: 0.12,
              padding: 0.02,
              image: AppAssets.roleAssets),
        ),
        Positioned(
          top: size.height * 0.35,
          right: size.width * 0.4,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.orangeColor,
                hw: 0.18,
                padding: 0.022,
                image: AppAssets.colddrindAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    0.0,
                    value! * 10,
                  ),
                  child: child,
                );
              }),
        ),
        Positioned(
          top: size.height * 0.37,
          left: -20,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.whiteColor,
                hw: 0.19,
                padding: 0.025,
                image: AppAssets.pizzaAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    value! * 10,
                    0.0,
                  ),
                  child: child,
                );
              }),
        ),
        Positioned(
          top: size.height * 0.4,
          right: 30,
          child: TweenAnimationBuilder<double?>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(seconds: 3),
              child: CircularItem(
                size: size,
                color: AppColor.bgSoftColor,
                hw: 0.17,
                padding: 0.025,
                image: AppAssets.foldburgerAssets,
              ),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(
                    -value! * 10,
                    0.0,
                  ),
                  child: child,
                );
              }),
        ),
      ]),
    );
  }
}

