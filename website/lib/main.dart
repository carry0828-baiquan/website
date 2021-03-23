import 'package:flutter/material.dart';
import 'package:website/Home/home_screen.dart';
import 'package:website/styles/constant.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '氢子泉',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homeScreen(),
    );
  }
}
