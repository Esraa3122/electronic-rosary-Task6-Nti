import 'package:electronic_rosary/src/core/style/image_app.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/button_background_Image.dart';
import 'package:flutter/material.dart';

class RowBackGroundImage extends StatelessWidget {
  const RowBackGroundImage({super.key, required this.cubit});
   final CounterCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonBackgroundImage(
            backgroundImage: const NetworkImage(ImageApp.backgroundImage4),
            onTap: (){
              cubit.changeColor4();
            },
          ),
          ButtonBackgroundImage(
            backgroundImage: const NetworkImage(ImageApp.backgroundImage3),
            onTap: (){
              cubit.changeColor3();
            },
          ),
          ButtonBackgroundImage(
            backgroundImage: const NetworkImage(ImageApp.backgroundImage2),
            onTap: (){
              cubit.changeColor2();
            }, 
          ),
          ButtonBackgroundImage(
            backgroundImage: const NetworkImage(ImageApp.backgroundImage1),
            onTap: (){
              cubit.changeColor1();
            },
          ),
      
        ],
      ),
    );
  }
}