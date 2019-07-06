import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return buildapp();
  }
}

class buildapp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: new Color(0xFFF2F6F9),
        backgroundColor: new Color(0xFFF2F6F9),
      ),
      home: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: new Color(0xFFF2F2F4),
            appBar: AppBar(
              elevation: 0,
              title: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
            ),
            body: Column(children: <Widget>[
              getProfile(),
              getInformation(), //info
              getbottoms(),
              getAddress(),
              getTabs(),
              getGridView(), //gridveiw
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                getBottomNavigationBarItem(Icons.home, Colors.grey[600]),
                getBottomNavigationBarItem(Icons.search, Colors.grey[600]),
                getBottomNavigationBarItem(
                    getIconData(0xe900, "insta"), Colors.grey[600]),
                getBottomNavigationBarItem(Icons.favorite, Colors.black),
                getBottomNavigationBarItem(
                    Icons.perm_identity, Colors.grey[600]),
              ],
            ),
          ),
          setPositionToast(),
        ],
      ),
    );
  }

  Widget getcircleImage(String Image) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(Image),
          radius: 20,
        )
      ],
    );
  }

  Widget getTab(IconData icon) {
    return Tab(
      icon: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }

  BottomNavigationBarItem getBottomNavigationBarItem(IconData icon, Color) {
    return BottomNavigationBarItem(
        icon: Icon(icon, color: Color), title: Text(""));
  }

  List<Container> _getlistImages(int count) => List.generate(
      count,
      (i) => Container(
              child: Image.asset(
            'images/$i.jpg',
            fit: BoxFit.fill,
          )));

  IconData getIconData(hex, fontfamily) {
    return IconData(hex, fontFamily: fontfamily);
  }

  Widget getbottoms() => Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                height: 28,
                alignment: Alignment(0, 0),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Send Message",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      backgroundColor: Colors.blue, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.done,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      );

  Widget getAddress() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 5),
            child: Row(
              children: <Widget>[
                Text(
                  "Alais Smith",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 18,
                    )),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "fashion.designer , London UK",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ))
        ],
      );

  Widget getTabs() => Container(
        //tabe layout
        color: new Color(0xFFF2F6F9),
        child: new DefaultTabController(
          length: 4,
          child: new TabBar(
            tabs: <Widget>[
              getTab(Icons.apps),
              getTab(Icons.storage),
              getTab(Icons.stars),
              getTab(Icons.account_box),
            ],
          ),
        ), //tab bar
      );

  Widget getGridView() => SizedBox(
        height: 290,
        child: GridView.extent(
            maxCrossAxisExtent: 150,
            padding: const EdgeInsets.all(4),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _getlistImages(15)),
      );

  Widget getInformation() => Container(
        margin: EdgeInsets.only(right: 170, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              //posts
              children: <Widget>[
                Text(
                  "245",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "posts",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "7850",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "fallowers",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "715",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "fallowing",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ],
        ),
      );

  Widget getProfile() => Container(
        //names and imageprofile
        margin: EdgeInsets.all(10),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "alisesmith",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25),
            ),
            getcircleImage("images/hamid.jpeg")
          ],
        ),
      );

  Positioned setPositionToast()=> Positioned(
    // possition for show favorit information

      width: 150,
      height: 50,
      right: 8,
      bottom: 35,
      child: Stack(
        children: <Widget>[
          Image.asset("images/buttcheek.png"),
          new Positioned(
              top: 15,
              left: 16,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 13,
                  ),
                  Text(
                    "155",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  Icon(Icons.chat_bubble,
                      color: Colors.white, size: 13),
                  Text(
                    "12",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ],
              ))
        ],
      ));
}
