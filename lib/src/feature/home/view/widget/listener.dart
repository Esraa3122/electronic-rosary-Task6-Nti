import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_state.dart';
import 'package:flutter/material.dart';

listener (context, state){
  return (context, state) {
    if (state is CounterUpdateImageState) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              backgroundColor: Colors.white,
              content: Center(child: Text(" تم تحديث الخلفيه و اللون بنجاح" , style: TextStyle(
                  color: Colors.pinkAccent,fontSize: SizeApp.s17
              ),)))
      );
    }
      if (state is CounterUpdateNameState) {
      showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    backgroundColor: Color.fromARGB(255, 224, 156, 156),
                    shadowColor: Color.fromRGBO(249, 198, 201, 1),
                    content:
                  Text(
                    "تم التحديث بنجاح", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: SizeApp.s15
                      ),
                    ),
                  );
                });

    }
    
  };
}