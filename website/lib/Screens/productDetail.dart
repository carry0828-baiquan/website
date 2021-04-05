import 'package:flutter/material.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/Components/productDetailBartitle.dart';
import 'package:website/Components/productDetailScrollList.dart';
import 'package:website/styles/buildBoxDecroation.dart';
import 'dart:ui';
import 'package:website/model/logic.dart';
import 'package:website/Components/productDetailPage.dart';

class productDetail extends StatefulWidget {
  @override
  _productDetailState createState() => _productDetailState();
}

class _productDetailState extends State<productDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: IconThemeData(color: Colors.white),),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      body:Container(
        decoration: buildBoxDecoration(3),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: ListView(
            padding: EdgeInsets.only(top: 40),
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar("产品展示"),
                    productDetailBartitle("氢子泉爽肤喷雾（20ml*6支/盒)"),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for(var i = 0; i < 5; i++)
                            productHorizontalListCell(i, productDetailImage(i, penwuImages), penwuImages)
                    ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    productDetailBartitle("氢子泉瓶装水"),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                            for(var i = 0; i < 6; i++)
                              productHorizontalListCell(i, productDetailImage(i, xiaopingImages), xiaopingImages)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    productDetailBartitle("氢子泉桶装水"),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for(var i = 0; i < 5; i++)
                            productHorizontalListCell(i, productDetailImage(i, tongzhuangImages), tongzhuangImages)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

