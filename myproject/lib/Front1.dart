import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/Front1/ButtonIcons.dart';
import 'package:myproject/Front1/TextSection.dart';
import 'package:myproject/Front1/TitleAnime.dart';

class Front1 extends StatelessWidget {
  const Front1({Key? key}) : super(key: key);

  static const route = 'front1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Image.network(
                'https://pop.proddigital.com.br/wp-content/uploads/sites/8/2022/03/animes-de-abril-spy-x-family-anya.jpg',
                width: 392,
              )
            ],
          ),
          TitleAnime(),
          const ButtonIcons(),
          const TextSection()
        ],
      ),
    );
  }
}
