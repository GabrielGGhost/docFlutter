import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';


class Example23 extends Example {
  const Example23({super.key});

  @override
  final code = 'Row(children:[\n'
      '   Container(color: red, child: Text(\'Hello!\'))\n'
      '   Container(color: green, child: Text(\'Goodbye!\'))]';
  @override
  final String explanation =
      'A tela força a Row a ser do exato tamanho dela mesma.'
      '\n\n'
      'Assim como uma UnconstrainedBox, a Row não vai impor nenhuma restrição para seus filhos, '
      'e então deixa eles terem o tamanho que quiserem.'
      '\n\n'
      'A linha então coloca-os lado a lado e qualquer espaço extra permanece vazio.';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: Colors.red, child: const Text('Hello!', style: TextStyle(fontSize: 30))),
        Container(color: Colors.green, child: const Text('Goodbye!', style: TextStyle(fontSize: 30))),
      ],
    );
  }
}