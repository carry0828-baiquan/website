import 'package:flutter/material.dart';

BoxDecoration buildBoxDecoration() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage("BackGroundImageForTab1.jpeg"),
      fit: BoxFit.cover,
    ),
  );
}
