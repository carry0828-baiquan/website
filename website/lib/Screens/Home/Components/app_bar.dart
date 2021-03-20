import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return _buildWider(context);
    // return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
    //   if(constraints.maxWidth > 500) {
    //     return _buildWider(context);
    //   } else {
    //     return _buildNormal(context);
    //   }

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
                ],
              ),
            ],
          ),
        ),
      );
  }
}
