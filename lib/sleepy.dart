import 'package:flutter/material.dart';

class Sleepy extends StatelessWidget {
  const Sleepy({
    Key key,
    @required this.controller,
    @required this.h,
    @required this.w,
  }) : super(key: key);

  final AnimationController controller;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: <Widget>[
            LetterZ(
              duration: 300,
              top: h / 2 - (40 * (1 - controller.value)),
              left: w / 2 - 35 - (35 * (1 - controller.value)),
              fontSize: 14,
            ),
            LetterZ(
              duration: 250,
              top: h / 2 - (60 * (1 - controller.value)),
              left: w / 2 - 40 - (40 * (1 - controller.value)),
              fontSize: 18,
            ),
            LetterZ(
              duration: 200,
              top: h / 2 - (80 * (1 - controller.value)),
              left: w / 2 - 45 - (45 * (1 - controller.value)),
              fontSize: 22,
            ),
          ],
        );
      },
    );
  }
}

class LetterZ extends StatelessWidget {
  final int duration;
  final double top;
  final double left;
  final double fontSize;

  const LetterZ({
    Key key,
    this.duration,
    this.top,
    this.left,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: duration),
      curve: Curves.easeInCubic,
      top: top,
      left: left,
      child: Text(
        'z',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
