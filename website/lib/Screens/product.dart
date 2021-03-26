import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/model/logic.dart';

import '../model/logic.dart';

class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);
    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  int ListTileSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
      child: ListWheelScrollView(
          itemExtent: 125,
          children: listTiles,
          diameterRatio: 2,
          offAxisFraction: -0.5,
          squeeze: 0.8,
          physics: FixedExtentScrollPhysics(),
              ),
    );
  }
}
