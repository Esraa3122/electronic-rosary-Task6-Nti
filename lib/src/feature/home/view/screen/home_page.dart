import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/app_bar.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_state.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/drawer_home.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/listener.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/row_back_ground_color.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/row_button_counter.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/text_counter.dart';
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
                          image: NetworkImage("https://th.bing.com/th/id/OIP.CaxN7mHnuhE9A0xzgtWaswHaLH?w=1024&h=1536&rs=1&pid=ImgDetMain"), fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: SizeApp.s50,
                      ),
                      TextCounter(
                        text: cubit.count.toInt().toString(), backgroundColor: cubit.color,
                      ),
                      const SizedBox(
                        height: SizeApp.s100,
                      ),
                     RowButtonCounter(cubit: cubit,),
                      const SizedBox(
                        height: SizeApp.s70,
                      ),
                      RowBackGroundColor(
                        cubit: cubit,
                      )
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}