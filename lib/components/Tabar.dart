import 'package:flutter/material.dart';

class Tabar {
  static get() {
    return  Container(
      //tabe layout
      color: new Color(0xFFF2F6F9),
      child: new DefaultTabController(
        length: 4,
        child: new TabBar(
          tabs: <Widget>[
            new Tab(
                icon: Icon(
                  Icons.apps,
                  color: Colors.blue,
                )),
            new Tab(
                icon: Icon(
                  Icons.storage,
                  color: Colors.grey,
                )), //
            Tab(
                icon: Icon(
                  Icons.stars,
                  color: Colors.grey,
                )),
            Tab(
              icon: Icon(
                Icons.account_box,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
