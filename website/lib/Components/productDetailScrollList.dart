import 'package:flutter/material.dart';
import 'package:website/Components/productDetailPage.dart';
import 'package:website/model/logic.dart';

class productHorizontalListCell extends StatelessWidget {
  final int index;
  final Widget page;
  final List imageList;
  const productHorizontalListCell(this.index, this.page, this.imageList);
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
                    image: imageList[index],
                    fit: BoxFit.cover,
                  )
              )
          ),
        ),
      ),
    );
  }
}
