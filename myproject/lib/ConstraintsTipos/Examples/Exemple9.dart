import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example9 extends Example {
  const Example9({super.key});

  @override
  final code = 'ConstrainedBox(\n'
      '   constraints: BoxConstraints(\n'
      '              minWidth: 70, minHeight: 70,\n'
      '              maxWidth: 150, maxHeight: 150),\n'
      '      child: Container(color: red, width: 10, height: 10)))';
  @override
  final String explanation =
      'Você pode achar que o Container tem que ter entre 70 e 150 pixeis, mas você está errado. '
      'A ConstrainedBox apenas impôes restrições ADICIONAIS daqueles que ela recebeu de seu pai.'
      '\n\n'
      'Aqui, a tela força a ConstrainedBox a ser exatamente do mesmo tamanho da tela, '
      'então ela diz ao Conterner filho para também assumir o tamanho da tela, '
      'portanto ignorando seus parâmetros de \'restrições\'';

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(color: Colors.red, width: 10, height: 10),
    );
  }
}