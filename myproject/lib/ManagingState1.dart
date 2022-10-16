import 'package:flutter/material.dart';

class ManagingState1 extends StatefulWidget {
  const ManagingState1({Key? key}) : super(key: key);
  static const route = 'ManagingState1';

  @override
  State<ManagingState1> createState() => _ManagingState1State();
}

class _ManagingState1State extends State<ManagingState1> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
