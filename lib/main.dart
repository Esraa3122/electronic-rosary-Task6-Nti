import 'package:electronic_rosary/my_app.dart';
import 'package:electronic_rosary/src/core/block/block_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
