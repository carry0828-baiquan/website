import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/styles/buildBoxDecroation.dart';

const _urlGongWang = 'http://www.beian.gov.cn/';
const _ICP = 'https://beian.miit.gov.cn/#/Integrated/index';
const _SheHei = 'https://www.12389.gov.cn/';

class winwin extends StatefulWidget {
  @override
  _winwinState createState() => _winwinState();
}

class _winwinState extends State<winwin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0,iconTheme: IconThemeData(color: Colors.white)),
        extendBodyBehindAppBar: true,
        body: Center(
        child: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: buildBoxDecoration(2),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 40.0),
    child: CustomAppBar('加入我们'),
    ),
    Spacer(),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(65),
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white12
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  child: (
                      ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ListTile(
                                leading: Icon(Icons.precision_manufacturing_outlined, color: Colors.white, size: 24,),
                                title: Text('技术节点', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                subtitle: SelectableText('西安氢子泉生物工程有限公司', style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ListTile(
                                leading: Icon(Icons.copyright, color: Colors.white, size: 24,),
                                title: Text('版权所有', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                subtitle: SelectableText('西安氢子泉品牌运营有限公司', style: TextStyle(color: Colors.white),),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ListTile(
                                leading: Icon(Icons.phone, color: Colors.white, size: 24,),
                                title: Text('联系电话', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                subtitle: SelectableText('13359207117', style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ListTile(
                                leading: Icon(Icons.mail, color: Colors.white, size: 24,),
                                title: Text('邮箱', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                subtitle: SelectableText('qzqppyy0202@163.com', style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ListTile(
                                leading: Icon(Icons.location_city, color: Colors.white, size: 24,),
                                title: Text('地址', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                subtitle: SelectableText('陕西省西安市雁塔区丈八一路1号汇鑫IBC-A座', style: TextStyle(color: Colors.white),),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left:8.0, right: 8, top: 38, bottom: 0),
                              child:
                              Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage('images/备案图标.png'),
                                      fit: BoxFit.contain,
                                    ),
                                    TextButton(child: Text('陕公网安备 61019002001612号'),
                                      onPressed: (){
                                        _launchGongWangURL();
                                      },),
                                    TextButton(child: Text('陕ICP备2021002331号 '),
                                      onPressed: (){
                                        _launchICPURL();
                                      },),
                                    TextButton(onPressed: (){
                                      _launchSheHeiURL();
                                    }, child: Text(
                                        '全国涉黑涉恶违法犯罪线索举报'
                                    ))
                                  ],
                                ),
                              ),

                            )]
                      )),
                ),
              ),
            ),
          ),
    Spacer(),
    ],
    ),
    ),
    ));

  }
}

void _launchGongWangURL() async =>
    await canLaunch(_urlGongWang) ? await launch(_urlGongWang) : throw 'Could not launch $_urlGongWang';

void _launchICPURL() async =>
    await canLaunch(_ICP) ? await launch(_ICP) : throw 'Could not launch $_ICP';

void _launchSheHeiURL() async =>
    await canLaunch(_SheHei) ? await launch(_SheHei) : throw 'Could not launch $_SheHei';
