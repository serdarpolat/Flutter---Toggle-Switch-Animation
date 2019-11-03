import 'package:flutter/material.dart';

class BigMoon extends StatelessWidget {
  const BigMoon({
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
        return AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          curve: Curves.bounceOut,
          top: h / 2 - 50 - (66 * (1 - controller.value)), //h / 2 - 50,
          left: w / 2 - 6 + (31 * (1 - controller.value)), //w / 2 - 6,
          child: AnimatedOpacity(
            opacity: 1 * (1 - controller.value),
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceOut,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff52455A),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                FractionalTranslation(
                  translation: Offset(0.12, 0.12),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff625669),
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                ),
                FractionalTranslation(
                  translation: Offset(0.39, 0.39),
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xffFEFCFF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      children: <Widget>[
                        for (Freckle freckle in freckles) _freckle(freckle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _freckle(Freckle freckle) {
    return Positioned(
      top: freckle.top,
      left: freckle.left,
      child: Container(
        width: freckle.size,
        height: freckle.size,
        decoration: BoxDecoration(
          color: Color(0xffDAD2DD),
          borderRadius: BorderRadius.circular(freckle.size),
        ),
      ),
    );
  }
}

class Freckle {
  final double top;
  final double left;
  final double size;

  Freckle(this.top, this.left, this.size);
}

final List<Freckle> freckles = [
  Freckle(3, 23, 6),
  Freckle(11, 23, 2),
  Freckle(11, 27.5, 8),
  Freckle(20, 27.5, 2),
  Freckle(20, 32, 12),
  Freckle(36, 42, 4),
  Freckle(4, 32, 4),
  Freckle(10, 36, 4),
  Freckle(8, 41, 5),
  Freckle(16, 40, 2),
  Freckle(20, 48, 3),
  Freckle(35, 32, 6),
  Freckle(28, 48, 5),
];
