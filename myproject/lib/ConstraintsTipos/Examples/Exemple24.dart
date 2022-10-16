import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';


class Example24 extends Example {
  const Example24({super.key});

  @override
  final code = 'Row(children:[\n'
      '   Container(color: red, child: Text(\'…\'))\n'
      '   Container(color: green, child: Text(\'Goodbye!\'))]';
  @override
  final String explanation =
      'Desde que a Row não vai impor nenhuma restrição para seus filhos, '
      'é bem possível que os filhos possam ser muito grandes para caber na '
      'largura disponível da Row\n'
      'Nesse caso, igual a UnconstrainedBox, a Row disponibiliza o "overflow warning".';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.red,
          child: const Text(
            'This is a very long text that '
                'won\'t fit the line.',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(color: Colors.green, child: const Text('Goodbye!', style: TextStyle(fontSize: 30))),
      ],
    );
  }
}