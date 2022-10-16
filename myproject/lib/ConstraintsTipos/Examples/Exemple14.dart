import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example14 extends Example {
  const Example14({super.key});

  @override
  final code = 'UnconstrainedBox(\n'
      '   child: Container(color: red, width: 4000, height: 50));';
  @override
  final String explanation =
      'A tela força a UnconstrainedBox a ser exatamente do tamanho dela, '
      'e a UnconstrainedBox permite seu filho Container ter o tamanho que quiser.'
      '\n\n'
      'Infelizmente, nesse caso o Container tem 4000 pixeis de largura e é muito'
      ' grande para caber na UnconstrainedBox, '
      'então a UnconstrainedBox disponibiliza o aviso de "overflow warning".';

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: Colors.red, width: 4000, height: 50),
    );
  }
}