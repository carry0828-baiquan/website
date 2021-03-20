import 'package:flutter/material.dart';

import '../constant.dart';
import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(size.aspectRatio * 25),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: size.aspectRatio * 10, vertical: size.aspectRatio * 3),
        color: kDarkButton,
        onPressed: press,
        child: Text(
          text,style: TextStyle(color: Colors.white,
        fontSize: size.aspectRatio * 20),
        ),
      ),
    );
  }
}
