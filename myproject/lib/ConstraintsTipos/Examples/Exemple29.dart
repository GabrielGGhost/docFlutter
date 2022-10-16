import 'package:flutter/material.dart';
import '../Example.dart';

class Example29 extends Example {
  const Example29({super.key});

  @override
  final code = 'Scaffold(\n'
      '   body: Container(color: blue,\n'
      '   child: SizedBox.expand(\n'
      '      child: Column(\n'
      '         children: [\n'
      '            Text(\'Hello!\'),\n'
      '            Text(\'Goodbye!\')]))))';

  @override
  final String explanation =
      'Se você quer que o filho do Scaffold seka dp tamanho exato do próprio Scaffold, '
      'você pode envolver o filho em um SizedBox.expand.'
      '\n\n'
      'Quando um widget diz ao seu filho que ele deve ter um certo tamanho, '
      'nós dizemos que o widget fornece restrições "firmes" ao filho.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Colors.blueAccent,
          child: Column(
            children: const [
              Text('Hello!'),
              Text('Goodbye!'),
            ],
          ),
        ),
      ),
    );
  }
}