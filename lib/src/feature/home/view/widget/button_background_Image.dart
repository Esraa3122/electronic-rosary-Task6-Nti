import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class ButtonBackgroundImage extends StatelessWidget {
  const ButtonBackgroundImage({super.key, required this.onTap, required this.backgroundImage,});

  final Function()? onTap;
  final ImageProvider<Object>? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: SizeApp.s30,
        backgroundImage: backgroundImage,
      ),
    );
  }
}