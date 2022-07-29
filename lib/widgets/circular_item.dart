import 'package:flutter/material.dart';

class CircularItem extends StatelessWidget {
  const CircularItem({
    Key? key,
    required this.size,
    required this.image,
    required this.color,
    required this.hw,
    required this.padding,
  }) : super(key: key);

  final Size size;
  final String image;
  final Color color;
  final double hw;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size.width * padding),
      height: size.width * hw,
      alignment: Alignment.center,
      width: size.width * hw,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Image.asset(image),
    );
  }
}
