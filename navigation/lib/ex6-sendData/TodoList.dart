import 'package:flutter/material.dart';
import 'package:navigation/ex6-sendData/TodoDetail.dart';

import 'Todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODOS"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (_, index){
            return ListTile(
              title: Text(todos[index].title),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const TodoDetail(),
                      settings: RouteSettings(
                        arguments: todos[index]
                      )
                    )
                );
              },
            );
          }
      ),
    );
  }
}
