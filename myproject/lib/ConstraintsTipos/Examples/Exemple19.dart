import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example19 extends Example {
  const Example19({super.key});

  @override
  final code = 'Center(\n'
      '   child: FittedBox(\n'
      '      child: Text(\'Some Example Text.\')));';
  @override
  final String explanation =
      'Mas o que acontece se você colocar a FittedBox dentro de um Center? '
      'O Center permite que a FittedBox seja do tamanho que quiser até o tamanho da tela.'
      '\n\n'
      'A FittedBox então se dimensiona para o texto, então permite que o texto seja'
      'do tamanho que quiser.'
      '\n\n'
      'Desde que ambos FittedBox e Text tenham o mesmo tamanho, nenhum'
      'escalonamento acontece.';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FittedBox(
        child: Text('Some Example Text',),
      ),
    );
  }
}