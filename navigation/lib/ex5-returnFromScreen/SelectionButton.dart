import 'package:flutter/material.dart';

import 'SelectionScreen.dart';

class SelectionButton extends StatefulWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: const Text("Escolha uma opção"));
  }

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.pushNamed(context, SelectionScreen.route) ?? "";

    if (!mounted || result == "") return;

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('Você escolheu $result')));
  }
}
