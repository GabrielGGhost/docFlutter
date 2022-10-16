import 'package:flutter/material.dart';
import 'package:myproject/Front1.dart';
import 'package:myproject/HomeMenu.dart';
import 'package:myproject/ManagingState1.dart';
import 'package:myproject/ManagingState3.dart';

import 'ManagingState2.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      HomeMenu.route : (context) => const HomeMenu(),
      Front1.route : (context) => const Front1(),
      ManagingState1.route : (context) => const ManagingState1(),
      ManagingState2.route : (context) => const ManagingState2(),
      ManagingState3.route : (context) => const ManagingState3()

    }
  ));
}
