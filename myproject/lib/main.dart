import 'package:flutter/material.dart';
import 'package:myproject/Front1.dart';
import 'package:myproject/HomeMenu.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      HomeMenu.route : (context) => const HomeMenu(),
      Front1.route : (context) => const Front1(),
    }
  ));
}
