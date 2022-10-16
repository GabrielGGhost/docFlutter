import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example21 extends Example {
  const Example21({super.key});

  @override
  final code = 'Center(\n'
      '   child: Text(\'…\'));';
  @override
  final String explanation =
      'Se. entretanto, você remover a FittedBox, '
      'o texto recebe sua largura máxima da tela, '
      'e quebra a linha que preenche a tela.';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          'This is some very very very large text that is too big to fit a regular screen in a single line.'),
    );
  }
}