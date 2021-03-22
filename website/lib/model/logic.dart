
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/Components/blurBox.dart';
import 'package:website/Screens/product.dart';
import 'package:website/Screens/winWin.dart';
import 'package:website/Components/silverAppbar.dart';

import '../Components/app_bar.dart';
var middleWidgetsList = [BlurBox(), product(), winwin()];

var topBarList = [CustomAppBar(), silverAppBar(), CustomAppBar()];

var listTiles = [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(65),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: ListTile(
          leading: Icon(Icons.emoji_people, size: 50,),
          title: Text("增强免疫力"),
          subtitle: Text("饮用低氘水后，可以提高人体N K细胞活性值，增强机体免疫功能"
          , style: TextStyle(color: Colors.white)
          ),
          //tileColor: Colors.white,

),
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(65),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: ListTile(
            leading: Icon(Icons.emoji_people, size: 50,),
            title: Text("增强免疫力"),
            subtitle: Text("饮用低氘水后，可以提高人体N K细胞活性值，增强机体免疫功能",
                style: TextStyle(color: Colors.white)

            ),
            //tileColor: Colors.white,

          ),
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(65),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: ListTile(
            leading: Icon(Icons.repeat, size: 50,),
            title: Text("活化机体细胞，延缓衰老"),
            subtitle: Text("低氘水可以活化人体细胞，有效的保护DNA修复酶，促进酶反应，减少生命体DNA复制的错误，激发人体褪黑素的生成，可以减少老年斑，使皮肤更加白皙光泽"
            ,style: TextStyle(color: Colors.white),
            ),
            //tileColor: Colors.white,

          ),
        ),
      ),
    ),
  ),
  /*ListTile(
    leading: Icon(Icons.repeat),
    title: Text("活化机体细胞，延缓衰老"),
    subtitle: Text("低氘水可以活化人体细胞，有效的保护DNA修复酶，促进酶反应，减少生命体DNA复制的错误。此外低氘环境也会激发人体褪黑素的生成，可以减少老年斑，使皮肤更加白皙光泽"),
    tileColor: Colors.white,
  )*/

];
