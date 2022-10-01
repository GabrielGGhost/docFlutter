import 'dart:js';

import 'package:flutter/material.dart';
import 'package:navigation/ex2/Routes.dart';
import 'package:navigation/ex3/Routes.dart';
import 'package:navigation/ex4/Colors.dart';

import 'ex1/MainScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/second' : (context) => const SecondRouteName(),
      ExtractArgumentsScreen.routeName: (context) =>
      const ExtractArgumentsScreen()

    },
  ));
}