import 'package:flutter/material.dart';

class BigSun extends StatelessWidget {
  const BigSun({
    Key key,
    @required this.controller,
    @required this.resize,
    @required this.h,
    @required this.w,
  }) : super(key: key);

  final AnimationController controller;
  final Animation<double> resize;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInBack,
          top: h / 2 - 100 - (35 * controller.value),
          left: w / 2 - 70 - (45 * controller.value),
          child: Stack(
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: 110 * controller.value,
                height: 110 * controller.value,
                decoration: BoxDecoration(
                  color: Color(0xffCAECE2),
                  borderRadius: BorderRadius.circular(110),
                ),
              ),
              FractionalTranslation(
                translation: Offset(0.14, 0.14),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: 85 * controller.value,
                  height: 85 * controller.value,
                  decoration: BoxDecoration(
                    color: Color(0xffE0F0BB),
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
              ),
              FractionalTranslation(
                translation: Offset(0.47, 0.47),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  width: 56 * controller.value,
                  height: 56 * controller.value,
                  decoration: BoxDecoration(
                    color: Color(0xffEFE672),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
