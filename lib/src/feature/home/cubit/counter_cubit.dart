import 'package:electronic_rosary/src/core/style/color_background.dart';
import 'package:electronic_rosary/src/core/style/image_app.dart';
import 'package:electronic_rosary/src/core/style/size_app.dart';
import 'package:electronic_rosary/src/core/style/string_app.dart';
import 'package:electronic_rosary/src/feature/home/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  double count = 0;
  String img = ImageApp.backgroundImage4;
  String name = StringApp.laAlihAlaAllah;
  Color color = ColorBackground.backLightPink;
  double size = SizeApp.s30;
  void plusCoubterCubit() {
    count++;
    emit(CounterAdditionalState());
  }

  void resetCounterCubit() {
    count = 0;
    emit(CounterResetState());
  }

    void changeColor1() {
    color = ColorBackground.backpastel;
    img = ImageApp.backgroundImage1;
    emit(CounterUpdateImageState());
  }

  void changeColor2() {
    color = ColorBackground.backBlush;
    img = ImageApp.backgroundImage2;
    emit(CounterUpdateImageState());
  }

  void changeColor3() {
    color = ColorBackground.backPinkAccent;
    img = ImageApp.backgroundImage3;
    emit(CounterUpdateImageState());
  }

  void changeColor4() {
    color = ColorBackground.backLightPink;
    img = ImageApp.backgroundImage4;
    emit(CounterUpdateImageState());
  }

  void changeName1() {
    name = StringApp.subhanAllah;
    emit(CounterUpdateNameState());
  }

  void changeName2() {
    name = StringApp.alhamdAilah;
    emit(CounterUpdateNameState());
  }

  void changeName3() {
    name = StringApp.laAlihAlaAllah;
    emit(CounterUpdateNameState());
  }

  void changeName4() {
    name = StringApp.allahAkbar;
    emit(CounterUpdateNameState());
  }

  void changeName5() {
    name = StringApp.lahulWalaquhAlaBiAllah;
    emit(CounterUpdateNameState());
  }
    void changeSize30() {
    size = SizeApp.s30;
    emit(CounterUpdateSizeState());
  }

  void changeSize40() {
    size = SizeApp.s40;
    emit(CounterUpdateSizeState());
  }

  void changeSize50() {
    size = SizeApp.s50;
    emit(CounterUpdateSizeState());
  }

  void changeSize60() {
    size = SizeApp.s60;
    emit(CounterUpdateSizeState());
  }

  void changeSize70() {
    size = SizeApp.s70;
    emit(CounterUpdateSizeState());
  }
}