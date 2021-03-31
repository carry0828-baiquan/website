import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/model/logic.dart';
import 'package:website/styles/appBarStyle.dart';

import '../model/logic.dart';

class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("产品"),),
        body: Center(
        child: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: buildBoxDecoration(1),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 40.0),
    child: CustomAppBar('主要功效'),
    ),
    Spacer(),
          Container(
            height: size.height * 0.75,
            child: ListWheelScrollView(
              itemExtent: 125,
              children: listTiles,
              diameterRatio: 2,
              offAxisFraction: -0.5,
              squeeze: 0.8,
              physics: FixedExtentScrollPhysics(),
            ),
          ),
    Spacer(),
    ],
    ),
    ),
    ));
  }
}
