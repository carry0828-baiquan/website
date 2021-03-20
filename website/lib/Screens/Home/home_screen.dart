import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/Screens/Home/Components/app_bar.dart';
import 'package:website/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Center(
          child: Container(
            height: size.height,
            // it will take full width
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/globencer-dL09wmeZGaI-unsplash.jpeg"),
                fit: BoxFit.cover,

              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                Row(
                 children: [
                  Spacer(),
                   Column(
                     children: [
                       Text("扫码下载DAPP"),
                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Container(
                           width: size.aspectRatio * 150,
                           height: size.aspectRatio * 150,
                           child: Image(
                               image: AssetImage("assets/IMG_3537.jpg"),
                             fit: BoxFit.contain,
                             ),
                         ),
                       ),
                     ],
                   ),
                 ]),
                // It will cover 1/3 of free spaces
                Spacer(),
                Body(),
                // Spacer(
                //   flex: 1,
                // )
                // it will cover 2/3 of free spaces
              ],
            ),
          ),
        ),
      ),
    );
  }
}
