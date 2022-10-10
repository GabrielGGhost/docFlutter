import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIcons extends StatefulWidget {
  const ButtonIcons({Key? key}) : super(key: key);

  @override
  State<ButtonIcons> createState() => _ButtonIconsState();
}

Column _buildButtonColor(Color color, IconData icon, String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color
        ),)
      )
    ],
  );
}

class _ButtonIconsState extends State<ButtonIcons> {
  @override
  Widget build(BuildContext context) {

    final Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColor(Colors.redAccent, Icons.favorite, 'Favoritar'),
        _buildButtonColor(Colors.blueAccent, Icons.remove_red_eye, 'Assistir'),
        _buildButtonColor(Colors.black, Icons.cancel, 'Fechar'),
      ],
    );

    return buttonSection;
  }
}
