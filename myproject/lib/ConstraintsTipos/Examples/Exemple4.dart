import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example4 extends Example {
  const Example4({super.key});

  @override
  final code = 'Align(\n'
      '   alignment: Alignment.bottomRight,\n'
      '   child: Container(width: 100, height: 100, color: red))';

  @override
  final String explanation =
      'Exemplo diferente do anterior, neste é usado Align em vez de Center.'
      '\n\n'
      'Align também é usado para dizer ao Container que pode ser do tamanho que quiser, '
      'mas se estiver espaço vazio ele não vai centrazilar o Container. '
      'Em vez disso, ele alinha o Container ao canto inferior direito no espaço disponível.';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(width: 100, height: 100, color: Colors.red),
    );
  }
}
