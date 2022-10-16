import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';


class Example26 extends Example {
  const Example26({super.key});

  @override
  final code = 'Row(children:[\n'
      '   Expanded(\n'
      '       child: Container(color: red, child: Text(\'…\')))\n'
      '   Expanded(\n'
      '       child: Container(color: green, child: Text(\'Goodbye!\'))]';
  @override
  final String explanation =
      'Se todos os filhos de uma Row estão envoltos em Expandeds, cada Expanded '
      'tem um tamanho proporcional ao parâmetro flex, e apenas então cada Expanded '
      'força seus filhos a terem a largura do Expanded.'
      '\n\n'
      'Em outras palavras, o Expanded ignora os tamanhos dos seus filhos.';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: const Text(
              'This is a very long text that won\'t fit the line.',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
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