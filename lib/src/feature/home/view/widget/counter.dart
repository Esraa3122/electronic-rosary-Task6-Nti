import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class TextCounter extends StatelessWidget {
  const TextCounter(
      {super.key, required this.text, required this.backgroundColor, required this.fontSize});

  final String text;
  final Color? backgroundColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: SizeApp.s100,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: fontSize),
      ),
    );
  }
}