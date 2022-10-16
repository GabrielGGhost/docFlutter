import 'package:flutter/material.dart';
import '../Example.dart';

class Example28 extends Example {
  const Example28({super.key});

  @override
  final code = 'Scaffold(\n'
      '   body: Container(color: blue,\n'
      '   child: Column(\n'
      '      children: [\n'
      '         Text(\'Hello!\'),\n'
      '         Text(\'Goodbye!\')])))';

  @override
  final String explanation =
      'A tela força o Scaffold a ser exatamente do tamanho dela, '
      'então o Scaffold preenche a tela.'
      '\n\n'
      'O Scaffold diz que ao Container que ele pode ser do tamanho que quiser '
      'mas não maior que a tela.'
      '\n\n'
      'Quando um widget diz ao seu filho que ele pode ser menor que um certo tamanho, '
      'nós dizemos que o widget fornece restrições "soltas" para seus filhos.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          children: const [
            Text('Hello!'),
            Text('Goodbye!'),
          ],
        ),
      ),
    );
  }
}