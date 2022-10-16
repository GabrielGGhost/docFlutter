import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example13 extends Example {
  const Example13({super.key});

  @override
  final code = 'UnconstrainedBox(\n'
      '   child: Container(color: red, width: 20, height: 50));';
  @override
  final String explanation =
      'A tela força a UnconstrainedBox a ser exatamente do mesmo tamanho da tela.'
      'Entretanto, a UnconstrainedBox permite que seu filho tenha o tamanho que quiser.';

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: Colors.red, width: 20, height: 50),
    );
  }
}