import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example15 extends Example {
  const Example15({super.key});

  @override
  final code = 'OverflowBox(\n'
      '   minWidth: 0.0,'
      '   minHeight: 0.0,'
      '   maxWidth: double.infinity,'
      '   maxHeight: double.infinity,'
      '   child: Container(color: red, width: 4000, height: 50));';
  @override
  final String explanation =
      'A tela força a OverflowBox a ter o exato tamanho dela mesma, '
      'e a OverflowBox permite seu filho Container ter o tamanho que quiser.'
      '\n\n'
      'OverflowBox é similar à UnconstrainedBox, e a diferença é que ela não'
      'disponibilizar nenhum aviso se o filho não couber no espaço.'
      '\n\n'
      'Nesse caso, o Container tem uma largura de 4000 pixeis, e é muit grande'
      ' para caber na OverflowBox, '
      'mas a OverflowBox simplesmente mostra o tanto que puder, sem dar avisos.';

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Container(color: Colors.red, width: 4000, height: 50),
    );
  }
}