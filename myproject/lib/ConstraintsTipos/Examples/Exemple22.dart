import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';


class Example22 extends Example {
  const Example22({super.key});

  @override
  final code = 'FittedBox(\n'
      '   child: Container(\n'
      '      height: 20.0, width: double.infinity));';
  @override
  final String explanation =
      'FittedBox pode apenas escalar um widget que seja LIMITADO:\n'
      'Ou seja, tenha tamanhos não infinitos.\n '
      'Em outras palavras, ele não irá renderizar nada, e você verá um erro no console';

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 20.0,
        width: double.infinity,
        color: Colors.red,
      ),
    );
  }
}