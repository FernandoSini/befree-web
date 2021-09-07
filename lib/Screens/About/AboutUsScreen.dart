import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
              child: TopBarWidget(1),
              preferredSize: Size(screenSize.width, 1000),
            ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Text("Flemis")),
            ],
          ),
        ),
      ),
    );
  }
}
