import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:website/model/logic.dart';

class productDetailImage extends StatelessWidget {
  final int index;
  const productDetailImage(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),elevation: 0, backgroundColor: Colors.transparent,),
      body: PhotoView(
        imageProvider: productImages[index],
      ),
    );
  }
}
