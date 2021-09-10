import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    precacheImage(AssetImage("./assets/celebrating.jpg"), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(opacity: 1),
        preferredSize: Size(screenSize.width, 1000),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: SingleChildScrollView(
          controller: scrollController,
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
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width,
                color: Colors.purple[600],
                child: Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 300, top: 50),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Company",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "About us",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Segoe",
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200, top: 50),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Contact",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200, top: 50),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Work with us",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200, top: 50),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Legal",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
