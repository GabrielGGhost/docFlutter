import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example11 extends Example {
  const Example11({super.key});

  @override
  final code = 'Center(\n'
      '   child: ConstrainedBox(\n'
      '      constraints: BoxConstraints(\n'
      '                 minWidth: 70, minHeight: 70,\n'
      '                 maxWidth: 150, maxHeight: 150),\n'
      '        child: Container(color: red, width: 1000, height: 1000))))';
  @override
  final String explanation =
      'Agora, um Center permite que a ConstrainedBox seja de qualquer tamanho até o tamanho da tela.'
      'A ConstrainedBox impões restrições ADICIONAIS de seus parâmetros  de \'restrições\' no seu filho.'
      '\n\n'
      'O Container deve estar entre 70 e 150 pixeis. Ele quer ter 1000 pixeis, então acaba tendo 150(máximo).';

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
        child: Container(color: Colors.red, width: 1000, height: 1000),
      ),
    );
  }
}