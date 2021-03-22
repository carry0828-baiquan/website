import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/model/logic.dart';

import '../model/logic.dart';
class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
          child: ListWheelScrollView(
              itemExtent: 125,
              children: listTiles,
              diameterRatio: 2,
              offAxisFraction: -0.5,
              //physics: FixedExtentScrollPhysics(),
              squeeze: 0.8,
          ),
        );
  }
}
