import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    return _buildWider(context);
  }

  Widget _buildWider(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Spacer(),
        Container(
          margin: EdgeInsets.all(size.height * 0.01),
          padding: EdgeInsets.all(size.height * 0.01),
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black54.withOpacity(0.4),
              ),
            ],
          ),
          child: Container(
            //width: size.width,
            child: Row(
              children: <Widget>[
                Spacer(),
                Image(
                  image: AssetImage("images/logo.png"),
                  height: size.height * 0.04,
                  // width: size.aspectRatio * 100,
                  alignment: Alignment.topCenter,
                ),
                SizedBox(width: size.width * 0.01),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w400),
                ),
                Spacer()
              ],
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}
