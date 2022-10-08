import 'package:flutter/material.dart';
import 'package:persistence_form/Register.dart';
import 'package:persistence_form/List.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/' : (context) => const Register(),
      List.route : (context) => const List(),
    },
  ));
}
