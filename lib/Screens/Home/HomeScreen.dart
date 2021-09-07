import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Responsive.isSmallScreen(context)
          ? AppBar()
          : PreferredSize(
              child: TopBarWidget(1),
              preferredSize: Size(screenSize.width, 1000),
            ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text("Maconha"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
