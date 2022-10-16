import 'package:flutter/material.dart';
import '../Example.dart';

class Example27 extends Example {
  const Example27({super.key});

  @override
  final code = 'Row(children:[\n'
      '   Flexible(\n'
      '       child: Container(color: red, child: Text(\'…\')))\n'
      '   Flexible(\n'
      '       child: Container(color: green, child: Text(\'Goodbye!\'))]';
  @override
  final String explanation =
      'A única diferença entre usar Flexible em vez de Expanded, '
      'é que Flexible permite que seu filho seja MENOR do que a largura do Flexible, '
      'enquanto Expanded força seu filho a ter sua largura.'
      '\n\n'
      'Mas ambos Expanded e Flexible ignoram as larguras de seus filhos e os '
      'redimensionam eles mesmos.'
      '\n\n'
      'Isso signfica que é IMPOSSÍVEL expandir os filhos de um ROW proprocionalmente '
      ' aos seus tamanhos. '
      'A Row ou usa a largura exata do filho ou ignora ela completamente quando usa Expanded or Flexible.';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.red,
            child: const Text(
              'This is a very long text that won\'t fit the line.',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.green,
            child: const Text(
              'Goodbye!',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}