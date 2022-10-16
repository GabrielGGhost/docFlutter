import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example3 extends Example {
  const Example3({super.key});

  @override
  final code = 'Center(\n'
      '   child: Container(width: 100, height: 100, color: red))';

  @override
  final String explanation =
      'A tela força o centro ser exatamente do mesmo tamanho da tela, '
      'então o centro preenche a tela.'
      '\n\n'
      'O centro diz ao conteiner que ele pode ser do tamanho que ele quiser '
      'mas não maior do que a tela.'
      'Agora sim o container tem 100x100.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(width: 100, height: 100, color: Colors.red),
    );
  }
}
