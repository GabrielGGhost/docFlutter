import 'package:flutter/material.dart';

import 'ManagingState2/TapboxB.dart';

class ManagingState2 extends StatefulWidget {
  const ManagingState2({super.key});
  static const route = 'ManagingState2';
  @override
  State<ManagingState2> createState() => _ManagingState2State();
}

class _ManagingState2State extends State<ManagingState2> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}