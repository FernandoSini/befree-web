import 'package:befreeweb/Widgets/FooterWidget.dart';
import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
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
  final ScrollController scrollController = ScrollController();
  final scrollControllerBox = ScrollController();
  Future<String> loadPrivacy(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/politicaDePrivacidade.txt');
  }

  privacy() async {
    var politica = await loadPrivacy(context);
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          title: Center(
            child: Text(
              "Privacy Policy",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.pinkAccent[400],
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          actionsOverflowDirection: VerticalDirection.down,
          contentPadding: EdgeInsets.only(top: 10.0),
          content: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5,
            child: SingleChildScrollView(
              controller: scrollControllerBox,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text("$politica"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Ok, I accept",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: Navigator.of(context).pop,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          child: TopBarWidget(
            opacity: 0,
            color: Color(0xFF9a00e6),
            radius: 20,
            // color: Colors.pink[400],
          ),
        ),
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
                // foregroundDecoration: BoxDecoration(
                //   color: Color(0xFF9a00e6).withOpacity(0.5),
                // ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("./assets/privacy.jpg"),
                    fit: Responsive.isSmallScreen(context)
                        ? BoxFit.fitHeight
                        : BoxFit.cover,
                    // colorFilter: ColorFilter.mode(
                    //     Color(0xFF9a00e6), BlendMode.colorBurn),
                    // colorFilter: ColorFilter.mode(
                    //   Colors.grey,
                    //   BlendMode.darken,
                    // ),
                    colorFilter: ColorFilter.mode(
                      Colors.blueGrey,
                      BlendMode.lighten,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Privacy",
                        style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 50,
                          // color: Colors.pink[400],
                          color: Color(0xFF9a00e6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Your privacy is important for us",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          // color: Colors.white,
                          //  color: Color(0xFF9a00e6),
                          color: Colors.black,
                          fontWeight: FontWeight.bold, fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: screenSize.width * 0.3,
                      child: ElevatedButton(
                        child: Text(
                          "Read More",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          privacy();
                        },
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.pinkAccent[400],
                          // primary: Colors.pink[400],
                          primary: Color(0xFF9a00e6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              FooterWidget(onHoverList),
            ],
          ),
        ),
      ),
    );
  }
}
