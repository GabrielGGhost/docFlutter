import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primeira Rota"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Abrir rota"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => const SecondRoute()));
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Rota"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Voltar"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
