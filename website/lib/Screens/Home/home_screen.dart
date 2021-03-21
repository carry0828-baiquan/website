import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:website/Screens/Home/Components/app_bar.dart';
import 'package:website/Screens/Home/Components/blurBox.dart';

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
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35.0),
                child: CustomAppBar(),
              ),
              BlurBox(),
              // It will cover 1/3 of free spaces
              //Spacer(flex: 0.2,),
              Spacer(
                flex: 1,
              ),
              Row(
                  children: [
                    Spacer(),
                    Container(
                      height: 5,
                      child: Image(
                        image: AssetImage("assets/备案图标.png"),
                      ),
                    ),
                    Text("陕公网安备 61019002001612号", style: TextStyle(color: Colors.white, fontSize: 5),),
                    Spacer(),
                  ]
              )
              // it will cover 2/3 of free spaces
            ],
          ),
        ),

      ),

    );
  }
}
