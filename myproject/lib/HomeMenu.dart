import 'package:flutter/material.dart';
import 'package:myproject/Front1.dart';

import 'ManagingState1.dart';
import 'ManagingState2.dart';
import 'ManagingState3.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(Icons.screen_lock_portrait),
                  title: const Text("Font End 1"),
                  subtitle: const Text("Estudo de front end"),
                  onTap: (){
                    Navigator.pushNamed(context, Front1.route);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.screen_lock_portrait),
                  title: const Text("ManagingState1"),
                  subtitle: const Text("Gerenciamento de estado pelo próprio widget"),
                  onTap: (){
                    Navigator.pushNamed(context, ManagingState1.route);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.screen_lock_portrait),
                  title: const Text("ManagingState2"),
                  subtitle: const Text("Gerenciamento de estado pelo PAI do widget"),
                  onTap: (){
                    Navigator.pushNamed(context, ManagingState2.route);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.screen_lock_portrait),
                  title: const Text("ManagingState3"),
                  subtitle: const Text("Gerenciamento de estado pelo filho e pelo pai"),
                  onTap: (){
                    Navigator.pushNamed(context, ManagingState3.route);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
