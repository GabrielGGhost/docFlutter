import 'package:flutter/material.dart';
import 'package:myproject/AdaptativeApp/PeopleList/Layouts/NarrowLayout.dart';
import 'package:myproject/AdaptativeApp/PeopleList/Layouts/WideLayout.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Usuários"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth > 400){
            return const WideLayout();
          } else {
            return const NarrowLayout();
          }
        },
      ) ,
    );
  }
}
