import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  SelectionScreen({Key? key}) : super(key: key);

  static const route = 'selectScreen';

  String bulbassaur = 'Bulbassaur';
  String charmander = 'Charmander';
  String squitle = 'Squirtle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escolha seu pokemon inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, bulbassaur);
                },
                child: Text(bulbassaur),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, charmander);
                },
                child: Text(charmander),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, squitle);
                },
                child: Text(squitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
