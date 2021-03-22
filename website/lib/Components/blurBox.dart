import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BlurBox extends StatefulWidget {
  @override
  _BlurBoxState createState() => _BlurBoxState();
}

class _BlurBoxState extends State<BlurBox> with SingleTickerProviderStateMixin {
  bool show = true;

  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500),
        reverseDuration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*IconButton(
              onPressed: () {
                setState(() {
                  show = !show;
                  !show ? controller.reverse() : controller.forward();
                });
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.menu_home,
                progress: controller,
                color: Colors.white,
                size: size.height * 0.04,
              )),*/
          SizedBox(
            height: size.height * 0.02,
          ),
          AnimatedOpacity(
            opacity: show ? 1 : 0,
            duration: Duration(milliseconds: 500),
            child: Row(
              children: [
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(65),
                  child: Container(
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      /* boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -2),
                          blurRadius: 30,
                          color: Colors.white12.withOpacity(0.1),
                        ),
                      ],*/
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
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
                                      image: AssetImage("assets/IMG_3537.jpg"),
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
          )
        ],
      ),
    );
  }
}
