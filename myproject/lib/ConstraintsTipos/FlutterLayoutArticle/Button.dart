import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.isSelected,
      required this.exampleNumber,
      required this.onPressed})
      : super(key: key);

  final bool isSelected;
  final int exampleNumber;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Scrollable.ensureVisible(context,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOut,
            alignment: 0.5);
        onPressed();
      },
      style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isSelected ? Colors.grey : Colors.grey[800]),
      child: Text(exampleNumber.toString()),
    );
  }
}
