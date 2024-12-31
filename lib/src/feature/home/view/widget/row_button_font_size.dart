import 'package:electronic_rosary/src/core/style/color_background.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/button_size.dart';
import 'package:flutter/material.dart';

class RowButtonFontSize extends StatelessWidget {
  const RowButtonFontSize({super.key, required this.cubit});
  final CounterCubit cubit;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonSize(
            color: ColorBackground.backLightPink,
            onTap: (){
              cubit.changeSize30();
            }, 
            title: "30",
          ),
           ButtonSize(
            color: ColorBackground.backPinkAccent,
            onTap: (){
              cubit.changeSize40();
            }, 
            title: "40",
          ),
           ButtonSize(
            color: ColorBackground.backBlush,
            onTap: (){
              cubit.changeSize50();
            }, 
            title: "50",
          ),
           ButtonSize(
            color: ColorBackground.backpastel,
            onTap: (){
              cubit.changeSize60();
            }, 
            title: "60",
          ),
      
        ],
      ),
    );
  }
}