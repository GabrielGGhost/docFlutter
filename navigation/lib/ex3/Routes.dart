import 'package:flutter/material.dart';

class FirstRouteNamed extends StatelessWidget {
  const FirstRouteNamed({Key? key}) : super(key: key);

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
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondRouteName extends StatelessWidget {
  const SecondRouteName({Key? key}) : super(key: key);

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
