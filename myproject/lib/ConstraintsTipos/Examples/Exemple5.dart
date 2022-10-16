import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example5 extends Example {
  const Example5({super.key});

  @override
  final code = 'Center(\n'
      '   child: Container(\n'
      '              color: red,\n'
      '              width: double.infinity,\n'
      '              height: double.infinity))';
  @override
  final String explanation =
      'A tela força o Center a ser do exato tamanho da tela, '
      'então o Center preencher a tela.'
      '\n\n'
      'O Center diz ao Container qye ele pode ser do tamanho que quiser, mas '
      'não maior do que a tela.'
      'O Container quer ter um tamanho infinito, mas desde que não pode ser maior que '
      'a tela, ele apenas a preenche.';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity, height: double.infinity, color: Colors.red),
    );
  }
}
