import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example16 extends Example {
  const Example16({super.key});

  @override
  final code = 'UnconstrainedBox(\n'
      '   child: Container(color: Colors.red, width: double.infinity, height: 100));';
  @override
  final String explanation =
      'Isso não vai renderizar nada, e você verá um erro no console.'
      '\n\n'
      'A UnconstrainedBox permite que seu filho seja do tamanho que quiser, '
      'entretanto seu filho é um container com tamanho infinito.'
      '\n\n'
      'Flutter não pode renderizar tamanho infinitos, então ele lança um erro'
      'com a seguintes mensagem: '
      '"BoxConstraints forces an infinite width."';

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: Colors.red, width: double.infinity, height: 100),
    );
  }
}