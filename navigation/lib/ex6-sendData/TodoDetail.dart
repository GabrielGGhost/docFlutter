import 'package:flutter/material.dart';
import 'package:navigation/ex6-sendData/Todo.dart';

class TodoDetail extends StatelessWidget {
  const TodoDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}
