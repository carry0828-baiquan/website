import 'dart:ui';

import 'package:flutter/material.dart';


class DrawerListTiles extends StatelessWidget {

  final Icon icon;
  final String title, subTitle;
  final Widget page;
  const DrawerListTiles({Key key, this.icon, this.title, this.subTitle, this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(65),
        child: Container(
          color: Colors.white12,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0,
            ),
            child: ListTile(
              leading: icon,
              title: Text(title),
              subtitle: Text(
                subTitle,
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
                Navigator.pop(context);
              },
              selectedTileColor: Colors.lightBlue,
              //tileColor: Colors.white,
            ),
          ),
          ),
      ),
      );
  }
}
