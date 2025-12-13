import 'package:belajar_flutter/pages/choose_location.dart';
import 'package:belajar_flutter/pages/home.dart';
import 'package:belajar_flutter/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/location": (context) => ChooseLocation(),
    },
  ));
}

