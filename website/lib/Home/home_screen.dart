import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/Components/blurBox.dart';
import 'package:website/model/logic.dart';
import 'package:website/styles/DrawerListTiles.dart';

import '../model/logic.dart';
import '../styles/appBarStyle.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  /*var items = const <BottomNavigationBarItem>[
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
  }*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("氢子泉"), backgroundColor: Colors.blue,),
        drawer: Drawer(
          child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("images/BackGroundImageForTab1.jpeg"),
                   fit: BoxFit.cover,
             )
           ),
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white12
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 40, backgroundImage: AssetImage("images/boss.jpeg"),
                      ),
                      Spacer(),
                      Text("韩刚\n低氘康养生态链创始人\n西安氢子泉生物工程有限公司总经理\n西安汉术化学工程股份有限公司董事长",
                      style: TextStyle(color: Colors.white, fontSize: 11),textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
                DrawerTiles[0]
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: size.height,
            // it will take full width
            width: size.width,
            decoration: buildBoxDecoration(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: CustomAppBar(""),
                ),
                Spacer(),
                BlurBox(),
                Spacer(),
              ],
            ),
          ),
        ),
        /*bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          backgroundColor: items[_selectedIndex].backgroundColor,
          onTap: _onItemTapped,
          //elevation: 15,
        )*/
    );
  }
}
