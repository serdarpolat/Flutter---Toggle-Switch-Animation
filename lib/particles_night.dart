import 'package:flutter/material.dart';

class ParticlesNight extends StatelessWidget {
  const ParticlesNight({
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
              top: h / 2 - (25 * (1 - controller.value)),
              left: w / 2 - (100 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.4,
                child: Transform.scale(
                  scale: 0.7,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 260),
              curve: Curves.bounceOut,
              top: h / 2 - (75 * (1 - controller.value)),
              left: w / 2 - (60 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0,
                child: Transform.scale(
                  scale: 0.9,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 280),
              curve: Curves.bounceOut,
              top: h / 2 - (110 * (1 - controller.value)),
              left: w / 2 - (75 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.4,
                child: Transform.scale(
                  scale: 0.8,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceOut,
              top: h / 2 - (125 * (1 - controller.value)),
              left: w / 2 - (40 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.25,
                child: Transform.scale(
                  scale: 0.8,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 320),
              curve: Curves.bounceOut,
              top: h / 2 - (95 * (1 - controller.value)),
              left: w / 2 - (15 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.3,
                child: Transform.scale(
                  scale: 0.85,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 340),
              curve: Curves.bounceOut,
              top: h / 2 - (75 * (1 - controller.value)),
              left: w / 2 + (0 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.45,
                child: Transform.scale(
                  scale: 0.8,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 360),
              curve: Curves.bounceOut,
              top: h / 2 - (95 * (1 - controller.value)),
              left: w / 2 + (12 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.45,
                child: Transform.scale(
                  scale: 0.75,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 380),
              curve: Curves.bounceOut,
              top: h / 2 - (120 * (1 - controller.value)),
              left: w / 2 + (80 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.6,
                child: Transform.scale(
                  scale: 0.7,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 400),
              curve: Curves.bounceOut,
              top: h / 2 - (85 * (1 - controller.value)),
              left: w / 2 + (118 * (1 - controller.value)),
              child: Transform.rotate(
                angle: 0.15,
                child: Transform.scale(
                  scale: 0.7,
                  child: Icon(
                    Icons.add,
                    color: Colors.white38,
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
