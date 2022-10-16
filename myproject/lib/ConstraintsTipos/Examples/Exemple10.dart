import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example10 extends Example {
  const Example10({super.key});

  @override
  final code = 'Center(\n'
      '   child: ConstrainedBox(\n'
      '      constraints: BoxConstraints(\n'
      '                 minWidth: 70, minHeight: 70,\n'
      '                 maxWidth: 150, maxHeight: 150),\n'
      '        child: Container(color: red, width: 10, height: 10))))';
  @override
  final String explanation =
      'Agora, um Center permite que a ConstrainedBox seja de qualquer tamanho até o tamanho da tela.'
      '\n\n'
      'A ConstrainedBox impões restrições ADICIONAIS de seus parâmetros  de \'restrições\' no seu filho.'
      '\n\n'
      'O Container deve ser entre 70 e 150 pixeis. Ele quer ter 100 pixeis, '
      'então ele será aumentado até 70(mínimo).';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(color: Colors.red, width: 10, height: 10),
      ),
    );
  }
}