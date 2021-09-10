import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  void didChangeDependencies() {
    precacheImage(AssetImage("./assets/help.jpg"), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(
          opacity: 1,
          // color: Color(0xff9a00e6),
        ),
        preferredSize: Size(screenSize.width, 1000),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Colors.white,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Wrap(
            children: [
              Container(
                height: screenSize.height,
                width: screenSize.width * 0.55,
                // color: Color(0xFF9a00e6),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("./assets/help.jpg"),
                      fit: BoxFit.cover,
                      // colorFilter: ColorFilter.mode(
                      //   Color(0xFF9a00e6).withOpacity(1),
                      //   BlendMode.lighten,
                      // ),
                      colorFilter: ColorFilter.mode(
                        Colors.blueGrey.withOpacity(0.8),
                        BlendMode.lighten,
                      )),
                ),
                // color: Colors.blue[900],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Colors.pinkAccent[400],
                          fontSize: 50,
                          fontFamily: "Segoe",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Find a solution for your problem",
                        style: TextStyle(
                          color: Colors.pinkAccent[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenSize.height,
                alignment: Alignment.center,
                width: screenSize.width * 0.4,
                padding: EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
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
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Color(0xFF9a00e6),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
