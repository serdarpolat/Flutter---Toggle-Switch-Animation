import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  const Circles({
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
            AnimatedPositioned(
              duration: Duration(milliseconds: 250),
              curve: Curves.bounceOut,
              top: h / 2 - (60 * controller.value),
              left: w / 2 + (5 * controller.value),
              child: Transform.scale(
                scale: 1.1 * controller.value,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        width: 3,
                        color: Color(0xff90A7EB),
                      )),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceOut,
              top: h / 2 - (50 * controller.value),
              left: w / 2 + (65 * controller.value),
              child: Transform.scale(
                scale: 1 * controller.value,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 3,
                        color: Color(0xff90A7EB),
                      )),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 350),
              curve: Curves.bounceOut,
              top: h / 2 + (12 * controller.value),
              left: w / 2 + (80 * controller.value),
              child: Transform.scale(
                scale: 1 * controller.value,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 3,
                        color: Color(0xff90A7EB),
                      )),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              curve: Curves.bounceOut,
              top: h / 2 + (40 * controller.value),
              left: w / 2 + (24 * controller.value),
              child: Transform.scale(
                scale: 1 * controller.value,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 3,
                        color: Color(0xff90A7EB),
                      )),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
