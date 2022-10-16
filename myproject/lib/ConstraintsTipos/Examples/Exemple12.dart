import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example12 extends Example {
  const Example12({super.key});

  @override
  final code = 'Center(\n'
      '   child: ConstrainedBox(\n'
      '      constraints: BoxConstraints(\n'
      '                 minWidth: 70, minHeight: 70,\n'
      '                 maxWidth: 150, maxHeight: 150),\n'
      '        child: Container(color: red, width: 100, height: 100))))';
  @override
  final String explanation =
      'Agora, um Center permite que a ConstrainedBox seja de qualquer tamanho até o tamanho da tela.'
      'A ConstrainedBox impões restrições ADICIONAIS de seus parâmetros  de \'restrições\' no seu filho.'
      '\n\n'
      'O Container deve estar entre 70 e 150 pixeis. Ele quer ter 100 pixeis,'
      ' e esse é o tamanho que ele tem, pois está entre 70 e 150.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: Colors.red, width: 100, height: 100),
      ),
    );
  }
}