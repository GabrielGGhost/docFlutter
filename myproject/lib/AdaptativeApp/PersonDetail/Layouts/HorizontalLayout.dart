import 'package:flutter/material.dart';
import 'package:myproject/AdaptativeApp/Model/People.dart';

class HorizontalLayout extends StatelessWidget {
  final Person person;
  const HorizontalLayout({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Ativo: "),
                      Switch(
                        // This bool value toggles the switch.
                        value: person!.isActive,
                        activeColor: Colors.red,
                        onChanged: (bool value) {
                          person!.isActive = !person!.isActive;
                        },
                      ),
                    ],
                  ))),
          Align(
              alignment: Alignment.centerLeft,
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
    );
  }
}
