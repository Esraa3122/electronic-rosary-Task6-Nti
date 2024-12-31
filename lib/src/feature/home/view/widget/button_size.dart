import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class ButtonSize extends StatelessWidget {
  const ButtonSize({super.key, required this.onTap, required this.color, required this.title,});

  final Function()? onTap;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: SizeApp.s30,
        backgroundColor: color,
        child:  SizedBox(
          height: SizeApp.s30,
          width: SizeApp.s30,
          child: Center(
            child: Text(
              title ,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}