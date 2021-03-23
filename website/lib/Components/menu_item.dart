import 'package:flutter/material.dart';
import 'package:website/styles/constant.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final Widget page;
  const MenuItem({
    this.page,
    this.title,
  });
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
            horizontal: size.aspectRatio * 15, vertical: size.aspectRatio * 5),
        //color: _hasBeenPressed ? kDarkButton : null,
        hoverColor: kDarkButton,
        onPressed: () => {
          setState(() {
            _hasBeenPressed = !_hasBeenPressed;
          }),
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget.page)),
        },
        child: Text(
          widget.title,
          style: TextStyle(
            color: kTextcolor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
            fontSize: size.aspectRatio * 20,
          ),
        ),
      ),
    );
  }
}
