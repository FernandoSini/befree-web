import 'package:befreeweb/Widgets/Responsive.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatefulWidget {
  FooterWidget(this.onHoverList);
  List<bool> onHoverList;
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isSmallScreen(context)
          ? screenSize.height * 0.35
          : screenSize.height * 0.3,
      width: screenSize.width,
      color: Color(0xFF9a00e6),
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            margin: Responsive.isSmallScreen(context)
                ? EdgeInsets.only(left: 20, top: 50)
                : EdgeInsets.only(left: 250, top: 50),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[0] = value;
                    });
                  },
                  child: Text(
                    "Company",
                    style: TextStyle(
                      color: !widget.onHoverList[0]
                          ? Colors.white
                          : Colors.pink[400],
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
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[1] = value;
                    });
                  },
                  child: Text(
                    "About us",
                    style: TextStyle(
                      color: !widget.onHoverList[1]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[2] = value;
                    });
                  },
                  child: Text(
                    "Our purpose",
                    style: TextStyle(
                      color: !widget.onHoverList[2]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: Responsive.isSmallScreen(context)
                ? EdgeInsets.only(left: 20, top: 50)
                : EdgeInsets.only(left: 200, top: 50),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[3] = value;
                    });
                  },
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: !widget.onHoverList[3]
                          ? Colors.white
                          : Colors.pink[400],
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
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[4] = value;
                    });
                  },
                  child: Text(
                    "Advertising",
                    style: TextStyle(
                      color: !widget.onHoverList[4]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[5] = value;
                    });
                  },
                  child: Text(
                    "Partnerships",
                    style: TextStyle(
                      color: !widget.onHoverList[5]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: Responsive.isSmallScreen(context)
                ? EdgeInsets.only(left: 20, top: 50)
                : EdgeInsets.only(left: 200, top: 50),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[6] = value;
                    });
                  },
                  child: Text(
                    "Work with us",
                    style: TextStyle(
                      color: !widget.onHoverList[6]
                          ? Colors.white
                          : Colors.pink[400],
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
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[7] = value;
                    });
                  },
                  child: Text(
                    "Careers",
                    style: TextStyle(
                      color: !widget.onHoverList[7]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[8] = value;
                    });
                  },
                  child: Text(
                    "Join us",
                    style: TextStyle(
                      color: !widget.onHoverList[8]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: Responsive.isSmallScreen(context)
                ? EdgeInsets.only(left: 20, top: 50)
                : EdgeInsets.only(left: 200, top: 50),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[9] = value;
                    });
                  },
                  child: Text(
                    "Legal",
                    style: TextStyle(
                      color: !widget.onHoverList[9]
                          ? Colors.white
                          : Colors.pink[400],
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
                  onHover: (value) {
                    setState(() {
                      widget.onHoverList[10] = value;
                    });
                  },
                  child: Text(
                    "Privacy",
                    style: TextStyle(
                      color: !widget.onHoverList[10]
                          ? Colors.white
                          : Colors.pink[400],
                      fontFamily: "Segoe",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
