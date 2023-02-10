import 'package:flutter/material.dart';

class MockLabel extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight? weight;

  const MockLabel(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      this.weight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: size, color: color, fontWeight: weight));
  }
}
