import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example1 extends Example {
  const Example1({super.key});

  @override
  final code = 'Container(color:red)';

  @override
  final explanation = 'A tela é o pai do container, '
  'e ele força o container a ser exatamente do mesmo tamanho da tela'
  '\n\n'
  'Então o container preenche a tela e pinta ela de vermelho';

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}