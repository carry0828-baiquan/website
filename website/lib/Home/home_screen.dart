import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/Components/WhitePaperDownloadButton.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/Components/blurBox.dart';
import 'package:website/model/logic.dart';
import 'package:website/styles/DrawerListTiles.dart';

import '../model/logic.dart';
import '../styles/buildBoxDecroation.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: IconThemeData(color: Colors.white),),
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("images/drawerBackground.jpg"),
                   fit: BoxFit.cover,
             )
           ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.hardEdge,
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.white12
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(radius: 35, backgroundImage: AssetImage("images/boss.jpg"),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("韩刚", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                                Text("低氘康养生态链创始人\n西安氢子泉生物工程有限公司总经理\n西安汉术化学工程股份有限公司董事长",
                                  style: TextStyle(color: Colors.black, fontSize: 11),textAlign: TextAlign.start,
                                )],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                DrawerTiles[0],
                SizedBox(height: 20,),
                DrawerTiles[1],
                SizedBox(height: 20,),
                DrawerTiles[2],
                SizedBox(height: 20,),
                // DrawerTiles[3],
                // SizedBox(height: 20,),
                DrawerTiles[4],
                SizedBox(height: 20,),
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
                  child: CustomAppBar("氢子泉"),
                ),
                Spacer(),
                Center(child: WhitePaperDownloadButton("下载商业白皮书")),
                Spacer(),
                BlurBox(),
                Spacer(),
              ],
            ),
          ),
        ),
    );
  }
}
