import 'package:flutter/material.dart';
import 'package:myproject/AdaptativeApp/PeopleList/PeopleList.dart';
import '../../Model/People.dart';
import '../../PersonDetail/PersonDetail.dart';

class WideLayout extends StatefulWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  State<WideLayout> createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {

  Person? _person;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
          width: 350,
          child: PeopleList(
            onPersonTap: (person) => setState(() {
              if(_person != person) {
                _person = person;
              } else {
                _person = null;
              }
            }),
            pictureSide: "right",
          ),),
      Expanded(
          flex: 3,
          child: _person == null ? const Center(child: Text("Selecione um Usuário"),) : PersonDetail(_person!),
      )

    ]);
  }
}
