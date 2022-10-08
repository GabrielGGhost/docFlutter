import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  static const route = 'list';

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de pokemon"),

      ),
    );
  }
}
