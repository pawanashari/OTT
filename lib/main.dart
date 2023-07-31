import 'package:flutter/material.dart';
import 'package:ott/botnavi.dart';
import 'package:ott/feed.dart';
import 'package:ott/login.dart';
import 'package:ott/menu.dart';
import 'package:ott/movie.dart';
import 'package:ott/one.dart';
import 'package:ott/splash.dart';
import 'package:ott/stream.dart';
import 'package:ott/tvshow.dart';
import 'package:ott/two.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Wrapping the app with a builder method makes breakpoints
      // accessible throughout the widget tree.
      home: const splash(),
      builder: (context, index) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, index!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(450, name: TABLET),
          const ResponsiveBreakpoint.autoScale(450, name: TABLET),
          const ResponsiveBreakpoint.resize(450, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(450, name: DESKTOP),
        ],
      ),

    );
  }

  // onGenerateRoute route switcher.
  // Navigate using the page name, `Navigator.pushNamed(context, ListPage.name)`.
}
//

//

