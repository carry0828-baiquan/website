import 'package:flutter/material.dart';
import 'package:website/styles/appBarStyle.dart';
import 'dart:ui';
import 'package:website/model/logic.dart';
import 'package:website/productImages/productDetailPage.dart';

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
        decoration: buildBoxDecoration(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 5, left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white12
        ),
                    child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text("氢子泉爽肤喷雾（20ml*6支/盒)", style: TextStyle(color: Colors.white, fontSize: 22),),
                        ))),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  productHorizontalListCell(0, productDetailImage(0)),
                  productHorizontalListCell(1, productDetailImage(1)),
                  productHorizontalListCell(2, productDetailImage(2)),
                  productHorizontalListCell(3, productDetailImage(3)),
                  productHorizontalListCell(4, productDetailImage(4))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class productHorizontalListCell extends StatelessWidget {
  final int index;
  final Widget page;
  const productHorizontalListCell(this.index, this.page);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          clipBehavior: Clip.hardEdge,
          child: Container(
            width: 160.0,
            decoration: BoxDecoration(
              color: Colors.white24,
              image: DecorationImage(
                image: productImages[index],
                    fit: BoxFit.cover,
              )
            )
            ),
        ),
      ),
    );
  }
}
