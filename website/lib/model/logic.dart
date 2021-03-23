import 'package:flutter/material.dart';
import 'package:website/Components/app_bar.dart';
import 'package:website/Components/blurBox.dart';
import 'package:website/Components/silverAppbar.dart';
import 'package:website/Screens/product.dart';
import 'package:website/Screens/winWin.dart';
import 'package:website/styles/appBarStyle.dart';
import 'package:website/styles/listTileStyle.dart';

import '../Components/app_bar.dart';

var middleWidgetsList = [BlurBox(), product(), winwin()];
var topBarList = [CustomAppBar(), silverAppBar(), CustomAppBar()];
var listTiles = [
  TileStyle(
    icon: Icon(Icons.title),
    title: "fuck",
    subTitle: "fuckme",
  ),
  TileStyle(
    icon: Icon(Icons.title),
    title: "fuck",
    subTitle: "fuckme",
  )
];

var BoxDecorations = [buildBoxDecoration()];
