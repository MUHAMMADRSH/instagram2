import 'package:flutter/material.dart';

class getBottomNavigationBar{
  static get(){
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        getBottomNavigationBarItem(Icons.home, Colors.grey[600]),
        getBottomNavigationBarItem(Icons.search, Colors.grey[600]),
        getBottomNavigationBarItem(
            getIconData(0xe900, "insta"), Colors.grey[600]),
        getBottomNavigationBarItem(Icons.favorite, Colors.black),
        getBottomNavigationBarItem(
            Icons.perm_identity, Colors.grey[600]),
      ],
    );

  }
  static BottomNavigationBarItem getBottomNavigationBarItem(IconData icon, Color) {
    return BottomNavigationBarItem(
        icon: Icon(icon, color: Color), title: Text(""));
  }
  static IconData getIconData(hex, fontfamily) {
    return IconData(hex, fontFamily: fontfamily);
  }
}



