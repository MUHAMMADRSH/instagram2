import 'package:flutter/material.dart';

class body {
 static getbody() {
    return Stack(

      children: <Widget>[

        Column(
          children: <Widget>[
            _getProfile(),
            _getInformation(), //info
            _getbottoms(),
            _getAddress(),
          ],
        ),
      ],
    );
  }


 static Widget _getbottoms() => Container(
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

 static Widget _getAddress() => Column(
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

 static Widget _getInformation() => Container(
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

 static Widget _getProfile() => Container(
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

 static Widget getcircleImage(String Image) {
   return Stack(
     children: <Widget>[
       CircleAvatar(
         backgroundImage: AssetImage(Image),
         radius: 20,
       )
     ],
   );
 }



}
