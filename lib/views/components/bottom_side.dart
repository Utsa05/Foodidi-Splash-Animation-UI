import 'package:flutter/material.dart';
import 'package:food_splash_animation/constants/color_constants.dart';
import 'package:food_splash_animation/constants/string_constants.dart';

class BottomSide extends StatelessWidget {
  const BottomSide({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double?>(
                tween: Tween(begin: 0.0, end: 1.0),
                curve: Curves.bounceIn,
                duration: const Duration(milliseconds: 800),
                child: Text(
                  AppString.appName,
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.09),
                ),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(0.0, value! * 10.0),
                    child: child,
                  );
                }),
            const SizedBox(
              height: 25.0,
            ),
            TweenAnimationBuilder<double?>(
                tween: Tween(begin: 0.0, end: 1.0),
                //curve: Curves.bounceInOut,
                duration: const Duration(milliseconds: 800),
                child: Text(
                  AppString.appTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      wordSpacing: 2,
                      color: AppColor.whiteColor,
                      // fontWeight: FontWeight.400,
                      fontSize: size.width * 0.04),
                ),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(0.0, -value! * 10.0),
                    child: child,
                  );
                }),
            const SizedBox(
              height: 35.0,
            ),
            TweenAnimationBuilder<double?>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(seconds: 3),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 0.0,
                  height: 55.0,
                  onPressed: () {},
                  minWidth: size.width * 0.6,
                  color: AppColor.orangeColor,
                  child: Text(
                    AppString.getStarted,
                    style: TextStyle(
                        wordSpacing: 2,
                        color: AppColor.bgColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04),
                  ),
                ),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(value! * 10.0, 0.0),
                    child: child,
                  );
                }),
            const SizedBox(
              height: 15.0,
            ),
            TweenAnimationBuilder<double?>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(seconds: 3),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 0.0,
                  height: 55.0,
                  onPressed: () {},
                  minWidth: size.width * 0.6,
                  color: AppColor.bgSoftColor,
                  child: Text(
                    AppString.login,
                    style: TextStyle(
                        wordSpacing: 2,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04),
                  ),
                ),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(-value! * 10.0, 0.0),
                    child: child,
                  );
                })
          ],
        ),
      ),
    );
  }
}

