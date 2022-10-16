import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example2 extends Example {
  const Example2({super.key});

  @override
  final code = 'Container(width: 100, height: 100, color: red)';
  @override
  final String explanation =
      'O container vermelho quer ter um tamanho de 100x100 mas não consegue, '
      'porque a tela a força ser exatamente do mesmo tamanho da tela.'
      '\n\n'
      'Então o container preenche a tela.';

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: Colors.red);
  }
}