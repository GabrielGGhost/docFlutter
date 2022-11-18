import 'package:flutter/material.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SomeWidget(
      MyListItem(myTapCallback)
    );
  }

  void myTapCallback(Item item){
    print('usuário clicou no item');
  }
}
