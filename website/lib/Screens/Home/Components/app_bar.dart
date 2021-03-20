import 'package:flutter/material.dart';
import 'package:website/Components/default_button.dart';
import 'package:website/Screens/DetailScreen.dart';

import '../../../Components/default_button.dart';
import '../../../constant.dart';
import 'menu_item.dart';


class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return _buildWider(context);
    // return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
    //   if(constraints.maxWidth > 500) {
    //     return _buildWider(context);
    //   } else {
    //     return _buildNormal(context);
    //   }

  }
  Widget _buildNormal(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.all(size.aspectRatio * 20),
      padding: EdgeInsets.all(size.aspectRatio * 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size.aspectRatio * 50),
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
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage("assets/ddcLogo.png"),
              height: size.aspectRatio * 30,
              width: size.aspectRatio * 30,
              alignment: Alignment.topCenter,
            ),
            SizedBox(width: size.aspectRatio * 30),
            Text(
              "西安氢子泉品牌运营有限公司",
              style: TextStyle(fontSize: size.aspectRatio * 30, fontWeight: FontWeight.w100),
            ),
            Spacer(),
            MenuItem(
              title: "关于我们",
              page: DetailScreen(),
            ),
            SizedBox(width: size.aspectRatio * 30,),
            // MenuItem(
            // ),
            DefaultButton(
              text: "下载app",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }

    Widget _buildWider(BuildContext context){
      Size size = MediaQuery.of(context).size;
      return Container(
        width: size.width,
        margin: EdgeInsets.all(size.aspectRatio * 20),
        padding: EdgeInsets.all(size.aspectRatio * 10),
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
                    image: AssetImage("images/ddcLogo.png"),
                    height: size.aspectRatio * 100,
                    width: size.aspectRatio * 100,
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(width: size.aspectRatio * 10),
                  Text(
                    "西安氢子泉品牌运营有限公司",
                    style: TextStyle(fontSize: size.aspectRatio * 30, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
