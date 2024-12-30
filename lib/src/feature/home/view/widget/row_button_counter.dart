import 'package:electronic_rosary/src/feature/home/cubit/counter_cubit.dart';
import 'package:electronic_rosary/src/feature/home/view/widget/button_counter.dart';
import 'package:flutter/material.dart';

class RowButtonCounter extends StatelessWidget {
  const RowButtonCounter({super.key, required this.cubit});

  final CounterCubit cubit;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          ButtonCounter(
            onTap: () {
            cubit.plusCoubterCubit();
          },
          iconData: Icons.fingerprint,
          ),
          const Spacer(),
          ButtonCounter(
            onTap: () {
            cubit.resetCounterCubit();
            },
            iconData: Icons.restart_alt,
          ),
        ],
      ),
    );
  }
}