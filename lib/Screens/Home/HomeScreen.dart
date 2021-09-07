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
      extendBodyBehindAppBar: true,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenSize.height,
                width: screenSize.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("./assets/celebrating.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "A new way to connect people",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Segoe",
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: screenSize.height * 0.5,
              //   width: screenSize.width,
              //   color: Color(0xFF9a00e6),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.stretch,
              //     children: [
              //       Container(
              //         child: Wrap(
              //           spacing: 100,
              //           children: [
              //             Text(
              //               "About us",
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontFamily: "Segoe",
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               "About us",
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontFamily: "Segoe",
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
