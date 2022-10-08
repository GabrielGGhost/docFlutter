import 'package:flutter/material.dart';
import 'package:navigation/ex2/Routes.dart';
import 'package:navigation/ex3/Routes.dart';
import 'package:navigation/ex4/Colors.dart';
import 'package:navigation/ex5-returnFromScreen/SelectionScreen.dart';
import 'package:navigation/ex6-sendData/TodoList.dart';
import 'package:navigation/ex7-DeleteNetData/DataHttp.dart';
import 'package:navigation/ex8-fetchData/FetchData.dart';

import 'ex1/MainScreen.dart';
import 'ex5-returnFromScreen/home.dart';
import 'ex6-sendData/Todo.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => const FetchData(),
      '/second' : (context) => const SecondRouteName(),
      ExtractArgumentsScreen.routeName: (context) =>
      const ExtractArgumentsScreen(),
      SelectionScreen.route : (context) => SelectionScreen()
    },
  ));
}