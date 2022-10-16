import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example18 extends Example {
  const Example18({super.key});

  @override
  final code = 'FittedBox(\n'
      '   child: Text(\'Some Example Text.\'));';
  @override
  final String explanation =
      'A tela força a FittedBox a caber exatamente no tamanho dela.'
      'O Text tem algumas larguras naturais (também chamadas de larguras intrinsicas)'
      ' que depende da quantidade de texto, tamanho de fonte, etc...'
      '\n\n'
      'A FittedBox permite que o texto seja do tamanho que quiser, '
      'mas após o texto dizer seu tamanho para a FittedBox, '
      'ela escala o texto até caber na largura disponível.';

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Text('Some Example Text.', style: TextStyle(fontSize: 1),),
    );
  }
}