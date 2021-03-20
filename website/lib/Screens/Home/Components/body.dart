import 'dart:ui';
import 'blurBox.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //SizedBox(height: size.height * 0.05,),
              Container(
                width: size.width * 0.5,
                height: size.height * 0.35,
                child: BlurBox(),
                ),
              ]
        )
        );
  }
}


