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

  Widget _generateGrid(imageAddress) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 24,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset('assets/images/head-view-1.png',
                          width: 24, height: 24, fit: BoxFit.cover),
                    )),
                Container(
                  width: 200,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Maoo.Lopez',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                      Text('created 25 min ago',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w300)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/fly.svg', width: 21, height: 19),
                    SvgPicture.asset('assets/menu.svg', width: 21, height: 19)
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Stack(
                alignment: const Alignment(0, 0.9),
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(imageAddress,
                            height: 300, width: 300, fit: BoxFit.cover)),
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/heart.svg',
                        width: 50,
                        height: 50,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.white,
                        child: SvgPicture.asset(
                          'assets/comment_box.svg',
                          width: 13,
                          height: 13,
                        ),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      )
                    ],
                  )),
                ],
              )),
          Container(
            alignment: Alignment(-0.7, -1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Les gusta a danieldelax y 4,588 personas más',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 2,
                    )),
                Text(
                  'SACRIFICE | VIRUS this photomanipulation inspired in the virus',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    height: 2,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

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
              )),
          _generateGrid('assets/images/ig_shot_1.jpg'),
          _generateGrid('assets/images/ig_shot_2.jpg'),
          _generateGrid('assets/images/ig_shot_3.jpg'),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business'))
        ],
      ),
    );
  }
}
