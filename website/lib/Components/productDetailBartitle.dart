import 'dart:ui';

import 'package:flutter/material.dart';
class productDetailBartitle extends StatelessWidget {
  final String text;
  productDetailBartitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white12
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(text, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),),
                ))),
        ),
      );
  }
}
