import 'package:flutter/cupertino.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class life extends StatefulWidget {
  const life({Key? key}) : super(key: key);

  @override
  State<life> createState() => _lifeState();
}

class _lifeState extends State<life> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'image/Pi-rated-1.png',
      nextScreen: Container(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale,
    );

  }
}



