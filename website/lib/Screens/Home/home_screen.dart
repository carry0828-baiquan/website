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
      body: Center(
        child: Container(
          height: size.height,
          // it will take full width
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/jong-marshes-79mNMAvSORg-unsplash.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35.0),
                child: CustomAppBar(),
              ),
              Row(
               children: [
                Spacer(),
                 Column(
                   children: [
                     //Text("扫码下载DAPP"),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25.0),
                       child: Container(
                         width: size.width * 0.250,
                         height: size.height * 0.250,
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
              //Spacer(flex: 0.2,),
              Body(),
              Spacer(
                flex: 1,
              )
              // it will cover 2/3 of free spaces
            ],
          ),
        ),
      ),
    );
  }
}
