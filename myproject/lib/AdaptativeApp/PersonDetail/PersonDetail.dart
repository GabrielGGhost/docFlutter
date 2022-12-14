import 'package:flutter/material.dart';
import 'package:myproject/AdaptativeApp/Model/People.dart';
import 'package:myproject/AdaptativeApp/PersonDetail/Layouts/VerticalLayout.dart';

import 'Layouts/HorizontalLayout.dart';

class PersonDetail extends StatelessWidget {
  final Person person;

  const PersonDetail(this.person, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      LayoutBuilder(builder: (_, constraints) {
        print("tamanho: ${constraints.maxHeight}");
        if (constraints.maxHeight > 200) {
          return VerticalLayout(person: person);
        } else {
          return HorizontalLayout(person: person);
        }
      });
  }
}
