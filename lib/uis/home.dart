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
  );

  List<Widget> avatarList = List.generate(
      1200,
      (i) => Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/head-view-1.png',
                        width: 30, height: 30, fit: BoxFit.cover),
                  )),
              Text(
                "Sideone",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
              )
            ],
          )));

  @override
  Widget build(BuildContext context) {
    const background = const Color(0xFFF5F6FA);
    return Scaffold(
        backgroundColor: background,
        body: Container(
            child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Container(
                padding: EdgeInsets.only(top: 50),
                child: titleObject,
              ),
            ),
            Container(
              height: 100,
              child: new ListView(
                  scrollDirection: Axis.horizontal, children: avatarList),
            ),
            Container(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Explore',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700))
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 3, 0),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // border: Border.all(width: 3,color: Colors.green,style: BorderStyle.solid)
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/search.svg'),
                            Container(
                              width: 100,
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: TextField(
                                cursorWidth: 200,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ))
          ],
        )));
  }
}
