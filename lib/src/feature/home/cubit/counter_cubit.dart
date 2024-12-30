import 'package:electronic_rosary/src/core/style/color_background.dart';
import 'package:electronic_rosary/src/core/style/string_app.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  String name = StringApp.laAlihAlaAllah;
  Color color = ColorBackground.backLightPink;
  double count = 0;
  void plusCoubterCubit() {
    count++;
    emit(CounterAdditionalState());
  }

  void resetCounterCubit() {
    count = 0;
    emit(CounterResetState());
  }

  changeColor1() {
    color = ColorBackground.backpastel;
    emit(CounterUpdateColorState());
  }

  changeColor2() {
    color = ColorBackground.backBlush;

    emit(CounterUpdateColorState());
  }

  changeColor3() {
    color = ColorBackground.backPinkAccent;

    emit(CounterUpdateColorState());
  }

  changeColor4() {
    color = ColorBackground.backLightPink;

    emit(CounterUpdateColorState());
  }

  changeName1() {
    name = StringApp.subhanAllah;
    emit(CounterUpdateNameState());
  }

  changeName2() {
    name = StringApp.alhamdAilah;
    emit(CounterUpdateNameState());
  }

  changeName3() {
    name = StringApp.laAlihAlaAllah;
    emit(CounterUpdateNameState());
  }

  changeName4() {
    name = StringApp.allahAkbar;
    emit(CounterUpdateNameState());
  }

  changeName5() {
    name = StringApp.lahulWalaquhAlaBiAllah;
    emit(CounterUpdateNameState());
  }
}
