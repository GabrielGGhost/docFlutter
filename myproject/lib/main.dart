import 'package:flutter/material.dart';

import 'RandomWords.dart';

void main() {
  runApp(MaterialApp(
    title: 'Gerador de Plavaras Aleatórias',
    theme:  ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    ),
    home: const RandomWords(),
  ));
}
