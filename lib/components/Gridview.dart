import 'package:flutter/material.dart';

class Gridview {
 static get() {
    return SizedBox(
      height: 299,
      child: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: _getlistImages(15)),
    );
  }

 static List<Container> _getlistImages(int count) =>
      List.generate(
          count,
              (i) =>
              Container(
                  child: Image.asset(
                    'images/$i.jpg',
                    fit: BoxFit.fill,
                  )));
}