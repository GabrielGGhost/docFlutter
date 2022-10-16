import 'package:flutter/material.dart';

class Avaliate extends StatefulWidget {
  const Avaliate({Key? key}) : super(key: key);

  @override
  State<Avaliate> createState() => _AvaliateState();
}

class _AvaliateState extends State<Avaliate> {
  bool _isFavorited = false;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(0),
          icon: (_isFavorited
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border_outlined)),
          onPressed: _toggleFavorite,
          color: Colors.red,
        ),
        SizedBox(
          width: 18,
          child: Text("$_favoriteCount"),
        )
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
      } else {
        _favoriteCount += 1;
      }
      _isFavorited = !_isFavorited;
    });
  }
}
