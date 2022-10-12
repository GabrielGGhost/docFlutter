import 'package:flutter/material.dart';
import 'package:myproject/AdaptativeApp/PeopleList/PeopleList.dart';

import '../../Model/People.dart';
import '../../PersonDetail/PersonDetail.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PeopleList(
        onPersonTap: (person) => Navigator.of(context).push(MaterialPageRoute(
            builder: (_) =>
                Scaffold(appBar: AppBar(), body: PersonDetail(person)))),
      ),
    );
  }
}
