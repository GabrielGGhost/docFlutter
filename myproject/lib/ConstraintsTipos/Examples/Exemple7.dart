import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example7 extends Example {
  const Example7({super.key});

  @override
  final code = 'Center(\n'
      '   child: Container(color: red\n'
      '      child: Container(color: green, width: 30, height: 30)))';

  @override
  final String explanation =
      'A tela força o Center a ser exatamente do tamanho da tela, '
      'então o Center preencher a tela.'
      '\n\n'
      'O Center diz ao Container vermelho que ele pode ser do tamanho que quiser, '
      'mas não maior do que a tela. '
      'Desde que o Container não tenha um tamanho fixo mas tenha um filho, ele decide que '
      'quer ser do tamanho do filho.'
      '\n\n'
      'O Container vermelho diz ao seu filho que ele pode ter o tamanho que quiser,'
      'mas não maior que a tela.'
      '\n\n'
      'O filho é um Container verde que quer ter 30x30.'
      '\n\n'
      'Desde que o Container vermelho não tenha um tamanho mas tenha um filho, '
      'ele decide que ele quer ser do tamanho do filho. '
      'A cor vermelho não é visivel, desde que o Container verde cobre inteiramente '
      'o vermelho.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Container(
            color: Colors.green, width: 30, height: 30,
        ),
      ),
    );
  }
}
