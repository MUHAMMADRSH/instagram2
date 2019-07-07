import 'package:flutter/material.dart';
import 'package:instagram2/components/body.dart';
import 'package:instagram2/components/Appbar.dart';
import 'package:instagram2/components/BottomNavigationBar.dart';
import 'package:instagram2/components/Gridview.dart';
import 'package:instagram2/components/Tabar.dart';
import 'package:instagram2/components/Toast.dart';

class Pager {
 static page() {
    return Scaffold(
      appBar: Appbar.defaultAppbar(),
        body: Column(
      children: <Widget>[
         body.getbody(),
        Tabar.get(),
        Gridview.get(),
      ],
    ),
        bottomNavigationBar: getBottomNavigationBar.get()
    );
  }
 static pageToast(){
  return Toast.get();
 }
}
