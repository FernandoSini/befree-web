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
      // initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen(),
        "/aboutus": (context) => AboutUsScreen(),
        "/help": (context) => HelpScreen(),
        "/privacy": (context) => PrivacyScreen(),
      },

      home: HomeScreen(),
    );
  }
}
