import 'package:befreeweb/Screens/About/AboutUsScreen.dart';
import 'package:befreeweb/Screens/Help/HelpScreen.dart';
import 'package:befreeweb/Screens/Home/HomeScreen.dart';
import 'package:befreeweb/Screens/Privacy/PrivacyScreen.dart';
import 'package:flutter/material.dart';

import 'Responsive.dart';

class TopBarWidget extends StatefulWidget {
  final double opacity;
  TopBarWidget(this.opacity);

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 3000),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(
                  children: [
                    if (Responsive.isSmallScreen(context))
                      SizedBox(
                        width: screenSize.width * 0.02,
                      )
                    else if (Responsive.isMediumScreen(context))
                      SizedBox(
                        width: screenSize.width * 0.02,
                      )
                    else
                      SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        print(value);
                      },
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        child: Text(
                          "BeFree",
                          style: TextStyle(
                            // color: Color(0xFF9a00e6),
                            color: Colors.pinkAccent[400],
                            fontFamily: "Segoe",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    if (!Responsive.isLargeScreen(context))
                      const SizedBox(
                        width: 500,
                      )
                    else
                      const SizedBox(
                        width: 800,
                      ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).pushReplacement(
                        //   PageRouteBuilder(
                        //     pageBuilder: (context, animation1, animation2) =>
                        //         AboutUsScreen(),
                        //   ),
                        // );
                      },
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        print(value);
                      },
                      child: Container(
                        child: Wrap(
                          children: [
                            Icon(
                              Icons.info_outline,
                              // color: Color(0xFF9a00e6),
                              color: Colors.pinkAccent[400],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "About Us",
                              style: TextStyle(
                                // color: Color(0xFF9a00e6),
                                color: Colors.pinkAccent[400],
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                PrivacyScreen(),
                          ),
                        );
                      },
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        print(value);
                      },
                      child: Container(
                        child: Wrap(
                          children: [
                            Icon(
                              Icons.privacy_tip_outlined,
                              // color: Color(0xFF9a00e6),
                              color: Colors.pinkAccent[400],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Privacy",
                              style: TextStyle(
                                // color: Color(0xFF9a00e6),
                                color: Colors.pinkAccent[400],
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                HelpScreen(),
                          ),
                        );
                      },
                      hoverColor: Colors.transparent,
                      onHover: (value) {
                        print(value);
                      },
                      child: Container(
                        child: Wrap(
                          children: [
                            Icon(
                             Icons.live_help_outlined,
                              // color: Color(0xFF9a00e6),
                              color: Colors.pinkAccent[400],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Help",
                              style: TextStyle(
                                // color: Color(0xFF9a00e6),
                                color: Colors.pinkAccent[400],
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
