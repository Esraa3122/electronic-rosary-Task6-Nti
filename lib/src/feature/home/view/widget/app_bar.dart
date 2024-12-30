import 'package:electronic_rosary/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

AppBar appBarHome( {required Color color , required String text}) {
  return AppBar(
    elevation: 0.0,
    backgroundColor:color,
    title:  Text(
        style: appBarTextStyle,
        text),
    centerTitle: true,
  );
}