import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BlurBox extends StatefulWidget {
  @override
  _BlurBoxState createState() => _BlurBoxState();
}

class _BlurBoxState extends State<BlurBox> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn);
    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          ScaleTransition(
            scale: _animation,
            child: Opacity(
              opacity: 1,
              child: Row(
                children: [
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(65),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Text(
                                  "    随着社会发展和人们生活水平的普遍提高，以及人类生活方式的改变，健康产品的总需求急剧增加。低氘水及衍生品凭借 其独有的功能性，在健康产业以及医疗产业中得到深层次的应用。其中，低氘水被广泛应用于生活消费领域，在这些以水为基本生产要素的行业中，低氘水都发挥了其独特功能性，使低氘产业的前景不可限量。低氘康养生态链项目，集三十年水同位素技术研究，在「卫生水」和「安全水」的基础上提出「健康水」（氘含量≦138ppm 的低氘水）概念，并利用区块链技术和通证经济模型，建造了一个低氘全产业链分布式商业生态。",
                                  style: TextStyle(
                                    fontSize: size.height * 0.015,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      width: size.width * 0.20,
                                      height: size.height * 0.20,
                                      child: Image(
                                        image: AssetImage("QRCode.jpg"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      "扫码下载低氘生态app\n" "即刻开启低氘生活",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    )
                                  ],
                                ),
                                Spacer()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
