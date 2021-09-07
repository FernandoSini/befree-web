import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
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
          contentPadding: EdgeInsets.only(top: 10.0),
          content: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(bottom: 100),
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Privacy Policy",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text("${politica}"),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  child: Text(
                                    "Ok, I accept",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF9a00e6),
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
                    ),

                    // InkWell(
                    //   child: Container(
                    //     padding: EdgeInsets.only(top: 20.0),
                    //     decoration: BoxDecoration(
                    //       color: Colors.blue,
                    //       borderRadius: BorderRadius.only(
                    //           bottomLeft: Radius.circular(32.0),
                    //           bottomRight: Radius.circular(32.0)),
                    //     ),
                    //     child: Text(
                    //       "Rate Product",
                    //       style: TextStyle(color: Colors.white),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
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
      appBar: Responsive.isSmallScreen(context)
          ? AppBar()
          : PreferredSize(
              child: Container(child: TopBarWidget(0)),
              preferredSize: Size(screenSize.width, 1000),
            ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: SingleChildScrollView(
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
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(
                    //     Color(0xFF9a00e6), BlendMode.colorBurn),
                    colorFilter: ColorFilter.mode(
                      Colors.grey,
                      BlendMode.darken,
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
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Your privacy is important for us",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
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
