import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example17 extends Example {
  const Example17({super.key});

  @override
  final code = 'UnconstrainedBox(\n'
      '   child: LimitedBox(maxWidth: 100,\n'
      '      child: Container(color: Colors.red,\n'
      '                       width: double.infinity, height: 100));';
  @override
  final String explanation =
      'Aqui você não vera mais nenhum erro, '
      'porque quando a LimitedBox é dada um tamanho infinito pela UnconstrainedBox, '
      'ele pasa a largura máxima de 100 para seu filho.'
      '\n\n'
      'Se você trocar a UnconstrainedBox por um Center widget, '
      'a LimitedBox não vai mais aplicar esse limite (desde que seu limite é apenas '
      'aplicado quando ele recebe restrições infinitas) '
      'e o tamanho do Container é permitido crescer além de 100.'
      '\n\n'
      'Isso explica a diferença entre LimitedBox e uma ConstrainedBox.';


  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        maxHeight: 100,
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
