import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return _buildWider(context);
  }

    Widget _buildWider(BuildContext context){
      Size size = MediaQuery.of(context).size;
      return Container(
        width: size.width,
        margin: EdgeInsets.all(size.height * 0.02),
        padding: EdgeInsets.all(size.height * 0.01),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.aspectRatio * 30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ],
        ),
        child: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: <Widget>[
                  Spacer(),
                  Image(
                    image: AssetImage("assets/logo.png"),
                    height: size.height * 0.04,
                    // width: size.aspectRatio * 100,
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(width: size.width * 0.01),
                  Text(
                    "西安氢子泉品牌运营有限公司",
                    style: TextStyle(fontSize: size.height * 0.02, fontWeight: FontWeight.w400),
                  ),
                  Spacer()

                ],
              ),
            ],
          ),
        ),
      );
  }
}
