import 'package:flutter/material.dart';
import 'package:navigation/ex2/Routes.dart';
import 'package:navigation/ex3/Routes.dart';

import 'ex1/MainScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => const FirstRouteNamed(),
      '/second' : (context) => const SecondRouteName(),
    },
  ));
}