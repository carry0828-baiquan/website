import 'dart:ui';
import 'package:website/constant.dart';
import 'package:flutter/material.dart';

class BlurBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.6,
          child: ListView(
            children: [
              SizedBox(height: size.aspectRatio * 100,),
              Text(
                "随着社会发展和人们生活水平的普遍提高，以及人类生活方式的改变，健康产品的总需求急剧增加。低氘水及衍生品凭借 其独有的功能性，在健康产业以及医疗产业中得到深层次的应用。其中，低氘水被广泛应用于生活消费领域。如，饮品行业、酒类、化妆品行业、医药业、畜牧业、农业等。在这些以水为基本生产要素的行业中，低氘水都发挥了其独特功能性，使低氘产业的前景不可限量。低氘康养生态链项目，集三十年水同位素技术研究，在「卫生水」和「安全水」的基础上提出「健康水」（氘含量≦138ppm 的低氘水）概念，并利用区块链技术和通证经济模型，建造了一个低氘全产业链分布式商业生态。",
                style: TextStyle(
                  fontSize: size.aspectRatio *  24,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
