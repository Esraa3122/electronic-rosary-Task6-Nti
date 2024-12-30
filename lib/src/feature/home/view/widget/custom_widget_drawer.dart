import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class CustomWidgetDrawer extends StatelessWidget {
  const CustomWidgetDrawer(
      {super.key,
  required this.text, this.onTap});

   final String text;
   final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10,),
          width: 270,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
              child: Text(
               text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: SizeApp.s30, color: Colors.black,),
              ),
      ),
    );
  }
}