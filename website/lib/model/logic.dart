import 'package:flutter/material.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/Components/blurBox.dart';
import 'package:website/Components/silverAppbar.dart';
import 'package:website/Screens/product.dart';
import 'package:website/Screens/winWin.dart';
import 'package:website/styles/TileStyle.dart';
import 'package:website/styles/appBarStyle.dart';

import '../Components/app_bar.dart';

var middleWidgetsList = [BlurBox(), product(), winwin()];
var topBarList = [CustomAppBar("氢子泉"), CustomAppBar('主要功效'), CustomAppBar('加入我们')];
var listTiles = [
  TileStyle(
    icon: Icon(Icons.fitness_center, color: Colors.white,),
    title: "增强人体免疫力",
    subTitle: "提高人体 N K细胞活性值，增强机体免疫功能",
  ),
  TileStyle(
    icon: Icon(Icons.elderly, color: Colors.white,),
    title: "延缓衰老",
    subTitle: "有效的保护DNA修复酶，促进酶反应，减少生命体DNA复制的错误，此外低氘环境也会激发人体褪黑素的生成，减少老年斑，使肤色更加白皙光泽",
  ),
  TileStyle(
    icon: Icon(Icons.biotech, color: Colors.white,),
    title: '降低血糖',
    subTitle: '低氘环境会使胰脏分泌功能恢复正常，进而纠正糖和脂肪的代谢紊乱，可以将起伏不定的血糖水平变的趋于平稳',
  ),
  TileStyle(
    icon: Icon(Icons.no_food, color: Colors.white,),
    title: '溶解血脂',
    subTitle: '降低胆固醇含量和血黏度，活化内分泌系统中的各种腺体细胞，包括胰腺，甲状腺，脑下垂体，肾上腺素',
  ),
  TileStyle(
    icon: Icon(Icons.wc, color: Colors.white,),
    title: '缓解便秘',
    subTitle: '低氘环境可以活化肠黏膜细胞，促进肠蠕动，且利于排泄，具有预防或者缓解便秘的作用',
  ),
  TileStyle(
    icon: Icon(Icons.bedtime, color: Colors.white,),
    title: '提高睡眠质量',
    subTitle: '低氘环境可以使大脑的副交感神经兴奋，提高睡眠质量，对长期失眠的人具有很好的效果',
  )
];


var BackgroundImages = [AssetImage('images/BackGroundImageForTab1.jpeg'),
  AssetImage('images/BackgroundImageTab2.jpeg'), AssetImage('images/ImageForTab3.jpeg')];
