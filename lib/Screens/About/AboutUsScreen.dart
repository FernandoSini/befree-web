import 'package:befreeweb/Widgets/FooterWidget.dart';
import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void didChangeDependencies() {
    precacheImage(AssetImage("./assets/team.jpg"), context);
    precacheImage(AssetImage("./assets/iphonemock1.png"), context);
    super.didChangeDependencies();
  }

  List<bool> onHoverList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(
          opacity: 0,
          color: Color(0xFF9a00e6),
        ),
        preferredSize: Size(screenSize.width, 1000),
      ),
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      body: Container(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      // Container(
                      //   padding: EdgeInsets.only(top: 10),
                      //   child: RichText(
                      //     text: TextSpan(
                      //       children: [
                      //         TextSpan(
                      //           text: "About",
                      //           style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             fontFamily: "Segoe",
                      //             fontSize: 50,
                      //             color: Colors.black,
                      //           ),
                      //         ),
                      //         TextSpan(
                      //           text: " BeFree",
                      //           style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             fontFamily: "Segoe",
                      //             fontSize: 50,
                      //             color: Color(0xFF9a00e6),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      Container(
                        height: screenSize.height * 0.91,
                        width: screenSize.width,
                        // color: Color(0xFF9a00e6),
                        padding: Responsive.isSmallScreen(context)
                            ? EdgeInsets.only(left: 100, right: 100)
                            : null,
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(top: 50),
                                  height: screenSize.height,
                                  width: screenSize.width * 0.5,
                                  child: Column(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 200),
                                        child: RichText(
                                          softWrap: true,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "About",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Segoe",
                                                  fontSize: 50,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " BeFree",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Segoe",
                                                  fontSize: 50,
                                                  color: Color(0xFF9a00e6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 150, right: 150),
                                        child: Text(
                                          "Content 1 aiushdasuhdkjsaasjdhakjsdhkjashdkjashdjkasdhkjashdjkaahdkjashdjkashdjashdkahsjkdhaskdhaskdhaksdhkasdhsakdhaskjdhakjsdhaksjdhakjshdjksahdjkas",
                                          softWrap: true,
                                          textAlign: TextAlign.justify,
                                          maxLines: null,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            // fontFamily: "Segoe",
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: screenSize.height,
                                  width: screenSize.width * 0.5,
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 65),
                                        child: Center(
                                          child: Container(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "BeFree",
                                              style: TextStyle(
                                                color: Color(0xFF9a00e6),
                                                fontFamily: "Segoe",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "./assets/iphonemock1.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenSize.height,
                        width: screenSize.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(top: 50),
                              child: Text(
                                "Content 2",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: "Segoe",
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  // Positioned(
                  //   left: 50,
                  //   right: 50,
                  //   top: screenSize.height * 0.20,
                  //   child: Card(
                  //     elevation: 8,
                  //     color: Colors.white,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     shadowColor: Colors.black,
                  //     child: Container(
                  //       height: screenSize.height * 0.5,
                  //       width: screenSize.width * 0.5,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           Flexible(
                  //             child: Container(
                  //               padding: EdgeInsets.only(left: 200, right: 200),
                  //               child: Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   Container(
                  //                     child: Flexible(
                  //                       child: Text(
                  //                         "akjsdhjakshkjashdkjaksdkas",
                  //                         softWrap: true,
                  //                         maxLines: null,
                  //                         textAlign: TextAlign.justify,
                  //                         style: TextStyle(
                  //                           fontWeight: FontWeight.bold,
                  //                           // decorationThickness: 10,
                  //                           fontSize: 30,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   const SizedBox(
                  //                     height: 20,
                  //                   ),
                  //                   Flexible(
                  //                     child: Container(
                  //                       child: Text(
                  //                         "We're group of people trying to make a new way to get a match",
                  //                         softWrap: true,
                  //                         style: TextStyle(
                  //                           fontWeight: FontWeight.bold,
                  //                         ),
                  //                         textAlign: TextAlign.justify,
                  //                         maxLines: null,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           Container(
                  //             height: 500,
                  //             width: 500,
                  //             decoration: BoxDecoration(
                  //               image: DecorationImage(
                  //                 image: AssetImage("./assets/team.jpg"),
                  //               ),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
              FooterWidget(onHoverList)
            ],
          ),
        ),
      ),
    );
  }
}
