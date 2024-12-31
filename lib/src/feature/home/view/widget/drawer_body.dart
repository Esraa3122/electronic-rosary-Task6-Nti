  import 'package:electronic_rosary/src/core/style/string_app.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/custom_widget_drawer.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/image_drawer.dart';
import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
    const DrawerHome({super.key, required this.cubit});
 final  CounterCubit cubit;
    @override
    Widget build(BuildContext context) {
      return
        Drawer(
          backgroundColor: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const ImageWidgetDrawer(),
              CustomWidgetDrawer(
                text: StringApp.subhanAllah,
                onTap: () {
                  cubit.changeName1();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.alhamdAilah,
                onTap: () {
                  cubit.changeName2();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.laAlihAlaAllah,
                onTap: () {
                  cubit.changeName3();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.allahAkbar,
                onTap: () {
                  cubit.changeName4();
                },
              ),
              CustomWidgetDrawer(
                text: StringApp.lahulWalaquhAlaBiAllah,
                onTap: () {
                  cubit.changeName5();
                },
              ),
            ],
          ));
    }
  }