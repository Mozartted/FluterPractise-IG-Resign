import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  Widget titleObject = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // first view
          Column(
            children: [
              SvgPicture.asset('assets/top_header_plus.svg'),
            ],
          ),
          // second view
          Column(
            children: [
              SvgPicture.asset('assets/Instagram_logo_black.svg'),
            ],
          ),
          // theird view
          Column(
            children: [
              SvgPicture.asset('assets/top_header_message.svg'),
            ],
          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(5),
            child: ListView(
              children: <Widget>[
                Container(
                  child: titleObject,
                )
              ],
            )));
  }
}
