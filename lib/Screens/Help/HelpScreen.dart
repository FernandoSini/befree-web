import 'package:befreeweb/Widgets/TopBarWidget.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child: TopBarWidget(1),
        preferredSize: Size(screenSize.width, 1000),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Wrap(
            children: [
              Container(
                height: screenSize.height,
                width: screenSize.width * 0.5,
                color: Color(0xFF9a00e6),
                // color: Colors.blue[900],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: "Segoe",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find your solution for your problem",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenSize.height,
                alignment: Alignment.center,
                width: screenSize.width * 0.5,
                padding: EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_sharp),
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
