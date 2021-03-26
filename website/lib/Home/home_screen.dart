import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/model/logic.dart';

import '../model/logic.dart';
import '../styles/appBarStyle.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var items = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        backgroundColor: Colors.lightBlueAccent,
        label: "首页"),
    BottomNavigationBarItem(
        icon: Icon(Icons.local_drink),
        label: "产品",
        backgroundColor: Colors.cyan),
    BottomNavigationBarItem(
        icon: Icon(Icons.lightbulb_outline),
        label: "合作",
        backgroundColor: Colors.blue),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            height: size.height,
            // it will take full width
            width: size.width,
            decoration: buildBoxDecoration(_selectedIndex),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: topBarList[_selectedIndex],
                ),
                Spacer(),
                middleWidgetsList.elementAt(_selectedIndex),
                Spacer(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          backgroundColor: items[_selectedIndex].backgroundColor,
          onTap: _onItemTapped,
          //elevation: 15,
        ));
  }
}
