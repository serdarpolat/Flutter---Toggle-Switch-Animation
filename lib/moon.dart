import 'dart:math';

import 'package:animated_switcher/left_eye.dart';
import 'package:animated_switcher/mouth.dart';
import 'package:animated_switcher/right_eye.dart';
import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  const Moon({
    Key key,
    @required this.isDay,
    @required this.controller,
    @required this.resize,
    @required this.switchW,
    @required this.switchH,
    @required this.moonSize,
  }) : super(key: key);

  final bool isDay;
  final AnimationController controller;
  final Animation<double> resize;
  final double switchW;
  final double switchH;
  final double moonSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        AnimatedPositioned(
          duration: Duration(milliseconds: 460),
          curve: Curves.bounceOut,
          top: 4,
          left: isDay ? switchW - moonSize - 4 : 4,
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: pi * 2 * controller.value,
                child: Container(
                  width: moonSize,
                  height: moonSize,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(switchH),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        offset: Offset(0.0, 0.0),
                        color: Color(0xff120c17).withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      LeftEye(isDay: isDay),
                      RightEye(isDay: isDay),
                      Mouth(isDay: isDay, controller: controller),
                      fleckLeft(21, 8, 4),
                      fleckLeft(24, 4, 3),
                      fleckLeft(28, 8, 2),
                      fleckRight(21, 8, 4),
                      fleckRight(24, 4, 3),
                      fleckRight(28, 8, 2),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget fleckLeft(double top, double left, double size) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Color(0xffD8D6D9),
          borderRadius: BorderRadius.circular(size),
        ),
      ),
    );
  }

  Widget fleckRight(double top, double right, double size) {
    return Positioned(
      top: top,
      right: right,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Color(0xffD8D6D9),
          borderRadius: BorderRadius.circular(size),
        ),
      ),
    );
  }
}
