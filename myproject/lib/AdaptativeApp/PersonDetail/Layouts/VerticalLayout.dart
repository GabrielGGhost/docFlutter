import 'package:flutter/material.dart';

import '../../Model/People.dart';

class VerticalLayout extends StatefulWidget {
  final Person person;
  const VerticalLayout({required this.person, Key? key}) : super(key: key);

  @override
  State<VerticalLayout> createState() => _VerticalLayoutState();
}

class _VerticalLayoutState extends State<VerticalLayout> {
  Person? person;

  @override
  Widget build(BuildContext context) {
    person = widget.person;
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Stack(children: [
            Container(
                margin: const EdgeInsets.only(top: 48),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text(
                        person!.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${person!.gender} - ${person!.age} anos',
                        style: const TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Ativo: "),
                    Switch(
                      // This bool value toggles the switch.
                      value: person!.isActive,
                      activeColor: Colors.red,
                      onChanged: (bool value) {
                        setState(() {
                          person!.isActive = !person!.isActive;
                        });
                      },
                    )
                  ],
                )),
            Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38.0,
                      backgroundImage: NetworkImage(person!.picture),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                )),
          ]),
        ],
      ),
    ));
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
