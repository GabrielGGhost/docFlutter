import 'package:flutter/material.dart';
import 'package:persistence_form/Register.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/' : (context) => const Register(),
    },
  ));
}
