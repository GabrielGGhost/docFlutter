import 'package:flutter/material.dart';
import 'package:myproject/AdaptativeApp/Model/People.dart';

class PersonDetail extends StatelessWidget {
  final Person person;

  const PersonDetail(this.person, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(person.name),
          Text(person.phone),
        ],
      ),
    ) ;
  }
}
