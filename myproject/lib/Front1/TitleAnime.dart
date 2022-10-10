import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleAnime extends StatelessWidget {
  TitleAnime({Key? key}) : super(key: key);

  final Widget titleSection = Padding(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text("Family VS SPY",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const Text("Um espião adota uma criança",
                    style: TextStyle(color: Colors.grey))
              ],
            )),
        const Icon(Icons.star, color: Colors.redAccent),
        const Text('8,3')
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return titleSection;
  }
}
