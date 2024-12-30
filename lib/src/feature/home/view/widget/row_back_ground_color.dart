import 'package:electronic_rosary/src/core/style/color_background.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/background_color.dart';
import 'package:flutter/material.dart';

class RowBackGroundColor extends StatelessWidget {
  const RowBackGroundColor({super.key, required this.cubit});
   final CounterCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackGroundColor(
            color: ColorBackground.backLightPink,
            onTap: (){
              cubit.changeColor4();
            },
          ),
          BackGroundColor(
            color: ColorBackground.backPinkAccent,
            onTap: (){
              cubit.changeColor3();
            },
          ),
          BackGroundColor(
            color: ColorBackground.backBlush,
            onTap: (){
              cubit.changeColor2();
            },
          ),
          BackGroundColor(
            color: ColorBackground.backpastel,
            onTap: (){
              cubit.changeColor1();
            },
          ),
      
        ],
      ),
    );
  }
}