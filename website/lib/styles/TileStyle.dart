import 'dart:ui';

import 'package:flutter/material.dart';

class TileStyle extends StatelessWidget {
  final Icon icon;
  final String title, subTitle;
  const TileStyle({Key key, this.icon, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(65),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white12,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: icon,
                title: Text(title, style: TextStyle(color: Colors.white),),
                subtitle: Text(
                  subTitle,
                  style: TextStyle(color: Colors.white),
                ),
                //tileColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
