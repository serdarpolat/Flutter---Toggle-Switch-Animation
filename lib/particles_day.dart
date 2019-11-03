import 'package:flutter/material.dart';

class ParticlesDay extends StatelessWidget {
  const ParticlesDay({
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
              duration: Duration(milliseconds: 240),
              curve: Curves.bounceOut,
              top: h / 2 - (55 * controller.value),
              left: w / 2 - (20 * controller.value),
              child: Transform.rotate(
                angle: 0.4,
                child: Transform.scale(
                  scale: 1.1 * controller.value,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff4F4A51),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 260),
              curve: Curves.bounceOut,
              top: h / 2 - (65 * controller.value),
              left: w / 2 + (25 * controller.value),
              child: Transform.rotate(
                angle: 0.6,
                child: Transform.scale(
                  scale: 1.15 * controller.value,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff4F4A51),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 280),
              curve: Curves.bounceOut,
              top: h / 2 - (20 * controller.value),
              left: w / 2 + (75 * controller.value),
              child: Transform.rotate(
                angle: 0.4,
                child: Transform.scale(
                  scale: 1.1 * controller.value,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff4F4A51),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceOut,
              top: h / 2 + (30 * controller.value),
              left: w / 2 + (60 * controller.value),
              child: Transform.rotate(
                angle: 0.25,
                child: Transform.scale(
                  scale: 1 * controller.value,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff4F4A51),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 320),
              curve: Curves.bounceOut,
              top: h / 2 + (36 * controller.value),
              left: w / 2 - (15 * controller.value),
              child: Transform.rotate(
                angle: 0.9,
                child: Transform.scale(
                  scale: 1.1 * controller.value,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff4F4A51),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
