import 'package:animated_switcher/big_moon.dart';
import 'package:animated_switcher/big_sun.dart';
import 'package:animated_switcher/circles.dart';
import 'package:animated_switcher/expanded_layout.dart';
import 'package:animated_switcher/moon.dart';
import 'package:animated_switcher/particles_day.dart';
import 'package:animated_switcher/particles_night.dart';
import 'package:animated_switcher/sleepy.dart';
import 'package:flutter/material.dart';

const double switchW = 136;
const double switchH = 52;
const double moonSize = 44;

class Switcher extends StatefulWidget {
  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> resize;
  Animation<Color> colorAnim;

  double get w => MediaQuery.of(context).size.width;
  double get h => MediaQuery.of(context).size.height;

  bool isDay = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    resize = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff120c17),
              Color(0xff3b2248),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: <Widget>[
            BigMoon(controller: controller, h: h, w: w),
            ParticlesNight(controller: controller, h: h, w: w),
            Sleepy(controller: controller, h: h, w: w),
            ExpandedLayout(
              controller: controller,
              resize: resize,
              isDay: isDay,
              switchW: switchW,
              switchH: switchH,
            ),
            BigSun(
              controller: controller,
              resize: resize,
              w: w,
              h: h,
            ),
            ParticlesDay(
              controller: controller,
              w: w,
              h: h,
            ),
            Circles(
              controller: controller,
              w: w,
              h: h,
            ),
            Positioned(
              top: (h - switchH) / 2,
              bottom: (h - switchH) / 2,
              left: (w - switchW) / 2,
              right: (w - switchW) / 2,
              child: GestureDetector(
                onTap: () {
                  _switch();
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: switchW,
                  height: switchH,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44),
                    gradient: LinearGradient(
                      colors: isDay
                          ? [
                              Color(0xff52B9F1),
                              Color(0xffAA9EEA),
                            ]
                          : [
                              Colors.transparent,
                              Colors.transparent,
                            ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Moon(
                    isDay: isDay,
                    controller: controller,
                    switchW: switchW,
                    switchH: switchH,
                    moonSize: moonSize,
                    resize: resize,
                  ),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Stack(
                  children: <Widget>[
                    Cloud(
                      onTap: _switch,
                      top: h / 2 + 4,
                      left: w / 2 - 36,
                      scale: 0.8 * resize.value,
                    ),
                    Cloud(
                      onTap: _switch,
                      top: h / 2 - 20,
                      left: w / 2 - 64,
                      scale: 0.4 * resize.value,
                    ),
                    Cloud(
                      onTap: _switch,
                      top: h / 2 - 5,
                      left: w / 2 - 90,
                      scale: 0.6 * resize.value,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _switch() {
    final check = controller.status == AnimationStatus.completed ||
        controller.status == AnimationStatus.forward;
    controller.fling(velocity: check ? -1 : 1);
    setState(() {
      isDay = !isDay;
    });
  }
}

class Cloud extends StatelessWidget {
  const Cloud({
    Key key,
    @required this.top,
    @required this.left,
    @required this.scale,
    @required this.onTap,
  }) : super(key: key);

  final double top;
  final double left;
  final double scale;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Transform.scale(
        scale: scale,
        child: GestureDetector(
          onTap: onTap,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                top: -3,
                left: 0,
                child: Container(
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: 8,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                top: -8,
                left: 3,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
