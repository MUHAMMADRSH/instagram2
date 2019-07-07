import 'package:flutter/material.dart';
class Toast{
 static get(){
    return Positioned(
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
                      Icon(Icons.chat_bubble, color: Colors.white, size: 13),
                      Text(
                        "12",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ],
                  ))
            ],
          ));
  }
}