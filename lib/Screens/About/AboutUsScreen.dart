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
    super.didChangeDependencies();
    precacheImage(AssetImage("./assets/team.jpg"), context);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(opacity: 1),
        preferredSize: Size(screenSize.width, 1000),
      ),
      body: Container(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: screenSize.height * 0.5,
                    width: screenSize.width,
                    color: Color(0xFF9a00e6),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "About Us",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Segoe",
                              fontSize: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.4,
                  )
                ],
              ),
              Positioned(
                left: 50,
                right: 50,
                top: screenSize.height * 0.20,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.black,
                  child: Container(
                    height: screenSize.height * 0.5,
                    width: screenSize.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.only(left: 200, right: 200),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Container(child:Flexible(child: Text(""),))
                                Flexible(
                                  child: Container(
                                    child: Text(
                                      "We're group of people trying to make a new way to get a match",
                                      softWrap: true,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.justify,
                                      maxLines: null,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("./assets/team.jpg"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
