import 'package:flutter/material.dart';

class ImgSplashScreen extends StatelessWidget {
  const ImgSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('img/pngtree-muslims-pray-with-tasbih-png-image_6293310.png', fit: BoxFit.fill , errorBuilder: (context, error, stackTrace){
                return const Icon(
                    Icons.error_outline,
                    size: 100,
                    color: Colors.red,
                );
              },);
  }
}