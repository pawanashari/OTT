import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ott/botnavi.dart';
import 'package:page_transition/page_transition.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3600,
      backgroundColor: Colors.black,
      splash: 'assets/split.gif',
      nextScreen: navi(),
      splashTransition: SplashTransition.sizeTransition,
      splashIconSize: 600,
      //pageTransitionType: PageTransitionType.leftToRightPop,
    );
  }
}


