import 'package:befreeweb/Widgets/FooterWidget.dart';
import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final ScrollController scrollController = ScrollController();
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage("./assets/help.jpg"), context);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(
          opacity: 0,
          radius: 20,
          color: Color(0xff9a00e6),
        ),
        preferredSize: Size(screenSize.width, 1000),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.white,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Wrap(
                children: [
                  // Container(
                  //   height: screenSize.height,
                  //   width: Responsive.isSmallScreen(context)
                  //       ? screenSize.width
                  //       : screenSize.width * 0.55,
                  //   // color: Color(0xFF9a00e6),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("./assets/help.jpg"),
                  //       fit: BoxFit.cover,
                  //       // colorFilter: ColorFilter.mode(
                  //       //   Color(0xFF9a00e6).withOpacity(1),
                  //       //   BlendMode.lighten,
                  //       // ),
                  //       colorFilter: ColorFilter.mode(
                  //         Colors.blueGrey.withOpacity(0.8),
                  //         BlendMode.lighten,
                  //       ),
                  //       // colorFilter: ColorFilter.mode(
                  //       //   Colors.blue,
                  //       //   BlendMode.lighten,
                  //       // ),
                  //     ),
                  //   ),
                  //   // color: Colors.blue[900],
                  //   // child: Column(
                  //   //   mainAxisAlignment: MainAxisAlignment.center,
                  //   //   children: [
                  //   //     Container(
                  //   //       child: Text(
                  //   //         "Contact Us",
                  //   //         style: TextStyle(
                  //   //           color: Colors.pinkAccent[400],
                  //   //           fontSize: 50,
                  //   //           fontFamily: "Segoe",
                  //   //           fontWeight: FontWeight.bold,
                  //   //         ),  
                  //   //       ),
                  //   //     ),
                  //   //     Container(
                  //   //       margin: EdgeInsets.only(bottom: 20),
                  //   //       child: Text(
                  //   //         "Find a solution for your problem",
                  //   //         style: TextStyle(
                  //   //           color: Colors.pinkAccent[400],
                  //   //         ),
                  //   //       ),
                  //   //     ),
                  //   //   ],
                  //   // ),
                  // ),
                  Container(
                    height: screenSize.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: Responsive.isSmallScreen(context)
                              ? EdgeInsets.only(left: 170, right: 170)
                              : null,
                          child: Text(
                            "Help",
                            style: TextStyle(
                              color: Color(0xFF9a00e6),
                              // color: Colors.black,
                              fontSize: 50,
                              fontFamily: "Segoe",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Find a solution for your problem.",
                            style: TextStyle(
                              // color: Color(0xFF9a00e6),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          // height: screenSize.height,
                          alignment: Alignment.center,
                          width: screenSize.width * 0.4,
                          // padding: EdgeInsets.only(left: 100, right: 100),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Need some help?",
                              contentPadding: EdgeInsets.only(left: 30),
                              labelText: "Need some help?",
                              labelStyle: TextStyle(
                                color: Color(0xFF9a00e6),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.search_sharp),
                                onPressed: () {},
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color(0xFF9a00e6),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                gapPadding: 5,
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Color(0xFF9a00e6),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
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
