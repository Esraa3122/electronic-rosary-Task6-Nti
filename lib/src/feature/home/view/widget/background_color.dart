import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class BackGroundColor extends StatelessWidget {
  const BackGroundColor({super.key, required this.onTap, required this.color});

  final Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: SizeApp.s30,
        backgroundColor: color,
      ),
    );
  }
}