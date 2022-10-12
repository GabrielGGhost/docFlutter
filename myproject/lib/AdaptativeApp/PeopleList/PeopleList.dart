import 'package:flutter/material.dart';

import '../Model/People.dart';
import '../PersonDetail/PersonDetail.dart';

class PeopleList extends StatelessWidget {
  PeopleList({required this.onPersonTap, this.pictureSide, Key? key})
      : super(key: key);

  final void Function(Person) onPersonTap;
  final String? pictureSide;
  final Color selected = Colors.redAccent;
  final _people = people;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (var person in _people)
          ListTile(
            leading:
                "right" != pictureSide ? Image.network(person.picture) : null,
            trailing:
                "right" == pictureSide ? Image.network(person.picture) : null,
            title: Text(person.name),
            onTap: () {
              onPersonTap(person);

              for (var element in _people) {
                if (element != person) {
                  element.isSelected = false;
                }
              }

              person.isSelected = !person.isSelected;
            },
            textColor: !person.isSelected ? Colors.black : selected,
          )
      ],
    );
  }
}
