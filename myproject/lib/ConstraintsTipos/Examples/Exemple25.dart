import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';


class Example25 extends Example {
  const Example25({super.key});

  @override
  final code = 'Row(children:[\n'
      '   Expanded(\n'
      '       child: Container(color: red, child: Text(\'…\')))\n'
      '   Container(color: green, child: Text(\'Goodbye!\'))]';
  @override
  final String explanation =
      'Quando o filho de uma Row está envolta de um widget Expanded, a Row não '
      'permitirá mais que esse filho defina seu próprio tamanho.'
      '\n\n'
      'Em vez disso, ele define a largura do Expanded de acordo com os outros '
      ' filhos e apenas então o Expanded força o filho original a ter sua largura '
      '\n\n'
      'Em outras palavras, uma vez que você usar o Expanded, a largura do '
      'filho original original se torna irrelevante e então ignorado.';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Container(
              color: Colors.red,
              child: const Text(
                'This is a very long text that won\'t fit the line.',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
        Container(color: Colors.green, child: const Text('Goodbye!', style: TextStyle(fontSize: 30))),
      ],
    );
  }
}