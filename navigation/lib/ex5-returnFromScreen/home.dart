import 'package:flutter/material.dart';

import 'SelectionButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Retorno de dados"),
      ),
      body: const Center(
        child: SelectionButton(),
      ),
    );
  }
}

