import 'package:flutter/material.dart';

class ExpandedLayout extends StatelessWidget {
  const ExpandedLayout({
    Key key,
    @required this.controller,
    @required this.resize,
    @required this.isDay,
    @required this.switchW,
    @required this.switchH,
  }) : super(key: key);

  final AnimationController controller;
  final Animation<double> resize;
  final bool isDay;
  final double switchW;
  final double switchH;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Align(
          alignment: Alignment.center,
          child: Transform.scale(
            scale: 1 + 20 * resize.value,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: switchW,
              height: switchH,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(44),
                  gradient: LinearGradient(
                    colors: isDay
                        ? [
                            Color(0xff8AD2FD),
                            Color(0xffC0E8FE),
                          ]
                        : [
                            Color(0xff8C6898),
                            Color(0xff8C6898),
                          ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
        );
      },
    );
  }
}
