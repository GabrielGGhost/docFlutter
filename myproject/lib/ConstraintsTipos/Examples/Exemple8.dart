import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example8 extends Example {
  const Example8({super.key});

  @override
  final code = 'Center(\n'
      '   child: Container(color: red\n'
      '      padding: const EdgeInsets.all(20.0),\n'
      '      child: Container(color: green, width: 30, height: 30)))';
  @override
  final String explanation =
      'O Container vermelho se dimensiona sozinho ao tamanho do filho, mas ele toma'
      ' o seu próprio padding em consideração. '
      'Então ele também tem 30x30 mais o padding. '
      'A cor vermelho agora é visível por causa do padding e a cor verde do Container '
      'filho tem o mesmo tamanho do exemplo anterior.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(20),
        child: Container(color: Colors.green, width: 30, height: 30),
      ),
    );
  }
}