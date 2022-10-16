import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Example.dart';

class Example6 extends Example {
  const Example6({super.key});

  @override
  final code = 'Center(child: Container(color: red))';

  @override
  final String explanation =
      'A tela força o Center a ser do exato tamanho tamanho dela mesma, '
      'então o Center preenche a tela.'
      '\n\n'
      'O Center diz ao container que ela pode ser do tamanho que ele quiser, '
      'mas não maior do que a tela.'
      '\n\n'
      'Desde quee o Container não tenha filho e nem tamanho fixo, ele decide que '
      'ele quer ser o maior possível, então ele preenche a tela inteira.'
      '\n\n'
      'Mas por que o Container decide isso? '
      'Simplesmente porque essa é uma decisão de design por aqueles que criaram '
      ' o widget Container. '
      'Ele poderia ter sido criado diferente e você tem que ler a documentação do Container '
      'para entender como ele se comporta, dependendo das circustâncias.';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(color: Colors.red),
    );
  }
}
