import 'package:befreeweb/Screens/About/AboutUsScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/Home/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeFreeWeb',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen(),
        "/aboutus": (context) => AboutUsScreen(),
      },

      home: HomeScreen(),
    );
  }
}
