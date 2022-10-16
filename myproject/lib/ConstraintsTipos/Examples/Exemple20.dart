import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example20 extends Example {
  const Example20({super.key});

  @override
  final code = 'Center(\n'
      '   child: FittedBox(\n'
      '      child: Text(\'…\')));';
  @override
  final String explanation =
      'Entretando, o que acontece se uma FittedBox está dentro de um Center, '
      'mas o texto é muito largo para a tela?'
      '\n\n'
      'A FittedBox tenta se dimensionar para o texto, mas ela não pode ser maior '
      'que a tela. '
      'Ela então assume o tamanho da tela e redimensiona o texto para caber na tela';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FittedBox(
        child: Text(
            'This is some very very very large text that is too big to fit a regular screen in a single line.'),
      ),
    );
  }
}