import 'package:befreeweb/Widgets/FooterWidget.dart';
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
    super.didChangeDependencies();
    precacheImage(AssetImage("./assets/celebrating.jpg"), context);
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
    final ScrollController scrollController = ScrollController();
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(
          opacity: 0,
          // color: Color(0xFF9a00e6),
        ),
        preferredSize: Size(screenSize.width, 1000),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              //para usar um fade in no container devemos usar junto o stack
              // child: FadeInImage.assetNetwork(placeholder: "./assets/celebrating.jpg", image: "./assets/celebrating.jpg"),)
              Container(
                height: screenSize.height,
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Colors.white,
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

              FooterWidget(onHoverList)
            ],
          ),
        ),
      ),
    );
  }
}
