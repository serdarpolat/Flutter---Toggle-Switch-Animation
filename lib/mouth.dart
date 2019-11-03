import 'package:flutter/material.dart';

class Mouth extends StatelessWidget {
  const Mouth({
    Key key,
    @required this.isDay,
    @required this.controller,
  }) : super(key: key);

  final bool isDay;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutBack,
      left: isDay ? (44 - 16) / 2 : (44 - 6) / 2,
      bottom: isDay ? 10 : 12,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutBack,
        width: isDay ? 16 : 6,
        height: isDay ? 9 : 6,
        decoration: BoxDecoration(
          color: Color(0xff4F4A51),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 150),
              width: 3 * controller.value,
              height: 4 * controller.value,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
              ),
            ),
            SizedBox(width: 0.5),
            AnimatedContainer(
              duration: Duration(milliseconds: 150),
              width: 3 * controller.value,
              height: 4 * controller.value,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
