import 'package:flutter/material.dart';

import 'ManagingState2/TapboxB.dart';
import 'ManagingState3/TapboxC.dart';

class ManagingState3 extends StatefulWidget {
  const ManagingState3({super.key});
  static const route = 'ManagingState3';

  @override
  State<ManagingState3> createState() => _ManagingState3State();
}

class _ManagingState3State extends State<ManagingState3> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapboxC(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}