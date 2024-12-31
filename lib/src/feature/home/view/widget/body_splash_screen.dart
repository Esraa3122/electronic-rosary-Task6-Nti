import 'package:electronic_rosary/src/feature/home/view/widget/image_splash_screen.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/text_splash_screen.dart';
import 'package:flutter/material.dart';

class BodySplashScreen extends StatelessWidget {
  const BodySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 156, 156),
        body: Center(
          child: Column(
            children: [
             SizedBox(height: 200,),
             ImgSplashScreen(),
              SizedBox(height: 20,),
              TextSplashScreen(),
              SizedBox(height: 20,),
              CircularProgressIndicator(color:Colors.white,),
            ],
          ),
        ),
    );
  }
}