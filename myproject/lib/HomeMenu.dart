import 'package:flutter/material.dart';
import 'package:myproject/Front1.dart';

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
                  title: const Text("Font End 1"),
                  subtitle: const Text("Estudo de front end"),
                  onTap: (){

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
