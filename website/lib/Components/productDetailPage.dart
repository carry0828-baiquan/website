import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:website/model/logic.dart';

class productDetailImage extends StatelessWidget {
  final int index;
  final List imageList;
  const productDetailImage(this.index, this.imageList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),elevation: 0, backgroundColor: Colors.black,),
      body: PhotoView(
        imageProvider: imageList[index],
      ),
    );
  }
}
