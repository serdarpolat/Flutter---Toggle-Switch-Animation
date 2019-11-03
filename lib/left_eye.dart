import 'package:flutter/material.dart';

class LeftEye extends StatelessWidget {
  const LeftEye({
    Key key,
    @required this.isDay,
  }) : super(key: key);

  final bool isDay;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      top: isDay ? 12 : 16,
      left: 11,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 6,
        height: isDay ? 6 : 2,
        decoration: BoxDecoration(
          color: Color(0xff4F4A51),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
