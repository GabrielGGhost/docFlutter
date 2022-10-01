import 'package:flutter/material.dart';
import 'package:navigation/ex2/Routes.dart';
import 'package:navigation/ex3/Routes.dart';
import 'package:navigation/ex4/Colors.dart';
import 'package:navigation/ex5-returnFromScreen/SelectionScreen.dart';

import 'ex1/MainScreen.dart';
import 'ex5-returnFromScreen/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => const Home(),
      '/second' : (context) => const SecondRouteName(),
      ExtractArgumentsScreen.routeName: (context) =>
      const ExtractArgumentsScreen(),
      SelectionScreen.route : (context) => SelectionScreen()
    },
  ));
}