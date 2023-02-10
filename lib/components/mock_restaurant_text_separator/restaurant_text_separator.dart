import 'package:flutter/material.dart';

class RestaurantTextSeparator extends StatelessWidget {
  const RestaurantTextSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4, right: 4),
      child: const Text(
        '-',
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
