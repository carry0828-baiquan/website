import 'package:flutter/material.dart';

import '../model/logic.dart';

BoxDecoration buildBoxDecoration(index) {
  return BoxDecoration(
    image: DecorationImage(
      image: BackgroundImages[index],
      fit: BoxFit.cover,
    ),
  );
}
