import 'package:flutter/material.dart';
import 'page/Pager.dart';
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
          Pager.page(),
          Pager.pageToast()
        ],
      ),


      

    );
  }


}