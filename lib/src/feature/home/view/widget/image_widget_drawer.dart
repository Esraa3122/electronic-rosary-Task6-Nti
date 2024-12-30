import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class ImageWidgetDrawer extends StatelessWidget {
  const ImageWidgetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: SizeApp.s100,
      backgroundImage: NetworkImage(
        "https://i.pinimg.com/originals/e1/e4/33/e1e433e9dbfb857013110c19b047b5d1.jpg",
      ),
    );
  }
}