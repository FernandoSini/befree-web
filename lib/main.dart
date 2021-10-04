import 'package:befreeweb/Screens/About/AboutUsScreen.dart';
import 'package:befreeweb/Screens/Help/HelpScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/Home/HomeScreen.dart';
import 'Screens/Privacy/PrivacyScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeFreeWeb',
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/home":
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (context, animation1, animation2) => HomeScreen(),
            );
          case "/aboutus":
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (context, animation1, animation2) => AboutUsScreen(),
            );
          case "/help":
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (context, animation1, animation2) => HelpScreen(),
            );
          case "/privacy":
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (context, animation1, animation2) => PrivacyScreen(),
            );

          // default:
          //   return PageRouteBuilder(
          //       settings: settings,
          //       pageBuilder: (context, animation1, animation2) => HomeScreen());
        }
      },
      // routes: {
      //   "/home": (context) => HomeScreen(),
      //   "/aboutus": (context) => AboutUsScreen(),
      //   "/help": (context) => HelpScreen(),
      //   "/privacy": (context) => PrivacyScreen(),
      // },

      // home: HomeScreen(),
    );
  }
}
