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
    precacheImage(AssetImage("./assets/iphonemock2.png"), context);
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
          radius: 20,
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
                        height: Responsive.isSmallScreen(context)
                            ? screenSize.height * 0.75
                            : screenSize.height * 0.91,
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
                              direction: Responsive.isSmallScreen(context)
                                  ? Axis.vertical
                                  : Axis.horizontal,
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(top: 50),
                                  height: screenSize.height,
                                  width: Responsive.isSmallScreen(context)
                                      ? screenSize.width
                                      : screenSize.width * 0.5,
                                  child: Column(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 200,
                                        ),
                                        padding:
                                            Responsive.isSmallScreen(context)
                                                ? EdgeInsets.only(
                                                    bottom: 20, right: 200)
                                                : null,
                                        child: RichText(
                                          softWrap: true,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "About",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Segoe",
                                                  fontSize:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? 40
                                                          : 50,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " BeFree",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Segoe",
                                                  fontSize:
                                                      Responsive.isSmallScreen(
                                                              context)
                                                          ? 40
                                                          : 50,
                                                  color: Color(0xFF9a00e6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            Responsive.isSmallScreen(context)
                                                ? EdgeInsets.only(right: 200)
                                                : EdgeInsets.only(
                                                    left: 60, right: 50),
                                        child: Text(
                                          "Content 1 aiushdasuhdkjsaasjdhakjsdhkjashdkjashdjkasdhkjashdjkaahdkjashdjkashdjashdkahsjkdhaskdhaskdhaksdhkasdhsakdhaskjdhakjsdhaksjdhakjshdjksahdjkas",
                                          softWrap: true,
                                          textAlign: TextAlign.justify,
                                          maxLines: null,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            // fontFamily: "Segoe",
                                            fontSize: Responsive.isSmallScreen(
                                                    context)
                                                ? 20
                                                : 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (!Responsive.isSmallScreen(context))
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
                                                  "./assets/iphonemock1.png",
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  Container(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Responsive.isSmallScreen(context)
                            ? Axis.vertical
                            : Axis.horizontal,
                        children: [
                          Container(
                            height: screenSize.height,
                            width: screenSize.width * 0.5,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 100),
                                  height: screenSize.height * 0.7,
                                  child: Center(
                                    child: Container(
                                      child: Text(
                                        "BeFree",
                                        softWrap: true,
                                        style: TextStyle(
                                          fontFamily: "Segoe",
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF9a00e6),
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "./assets/iphonemock2.png",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: screenSize.height,
                            width: screenSize.width * 0.5,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 200),
                                  child: RichText(
                                    softWrap: true,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Your Security ",
                                          style: TextStyle(
                                            fontFamily: "Segoe",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "in first place",
                                          style: TextStyle(
                                            fontFamily: "Segoe",
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF9a00e6),
                                            fontSize: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: Responsive.isSmallScreen(context)
                                      ? null
                                      : EdgeInsets.only(
                                          top: 15, left: 60, right: 50),
                                  child: Text(
                                    "With us your safety is guaranteed while trying to get a new encounter",
                                    softWrap: true,
                                    maxLines: null,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? 20
                                              : 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Responsive.isSmallScreen(context)
                            ? Axis.vertical
                            : Axis.horizontal,
                        children: [
                          Container(
                            height: screenSize.height,
                            width: screenSize.width * 0.5,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Responsive.isSmallScreen(context)
                                      ? null
                                      : Alignment.centerLeft,
                                  margin: Responsive.isSmallScreen(context)
                                      ? EdgeInsets.only(top: 200)
                                      : EdgeInsets.only(top: 200, left: 60),
                                  child: RichText(
                                    softWrap: true,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Create ",
                                          style: TextStyle(
                                            fontFamily: "Segoe",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " Events",
                                          style: TextStyle(
                                            fontFamily: "Segoe",
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF9a00e6),
                                            fontSize: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: Responsive.isSmallScreen(context)
                                      ? null
                                      : EdgeInsets.only(
                                          top: 15, left: 60, right: 50),
                                  child: Text(
                                    "Create and promote your events on our platform with safety",
                                    softWrap: true,
                                    maxLines: null,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          Responsive.isSmallScreen(context)
                                              ? 20
                                              : 30,
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
                                  margin: EdgeInsets.only(top: 100),
                                  height: screenSize.height * 0.7,
                                  child: Center(
                                    child: Container(
                                      child: Text(
                                        "BeFree",
                                        softWrap: true,
                                        style: TextStyle(
                                          fontFamily: "Segoe",
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF9a00e6),
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "./assets/iphonemock2.png",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
