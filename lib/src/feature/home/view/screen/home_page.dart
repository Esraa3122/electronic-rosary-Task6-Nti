import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/app_bar.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_state.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/drawer_body.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/listener.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/row_back_ground_image.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/row_button_counter.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/counter.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/row_button_font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
     return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: listener(context, CounterState),
        builder: (context, state) {
          CounterCubit cubit = BlocProvider.of(context);

          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                drawer: DrawerHome(
                  cubit: cubit,
                ),
                appBar: appBarHome(text: cubit.name, color: cubit.color),
                body: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(cubit.img), fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: SizeApp.s50,
                      ),
                      TextCounter(
                        text: cubit.count.toInt().toString(), backgroundColor: cubit.color, fontSize: cubit.size,
                      ),
                      const SizedBox(
                        height: SizeApp.s100,
                      ),
                     RowButtonCounter(cubit: cubit,),
                      const SizedBox(
                        height: SizeApp.s70,
                      ),
                      RowBackGroundImage(cubit: cubit,),
                       const SizedBox(
                        height: SizeApp.s20,
                      ),
                      RowButtonFontSize(cubit:cubit),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}