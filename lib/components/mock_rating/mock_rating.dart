import 'package:flutter/material.dart';
import 'package:ifood_mock/components/mock_label/mock_label.dart';

class MockRating extends StatelessWidget {
  final double rating;

  const MockRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 2, top: 2),
          child: MockLabel(
            size: 11,
            color: Colors.orange,
            weight: FontWeight.bold,
            text: rating.toString().replaceAll('.', ','),
          ),
        ),
        Image.asset(
          'assets/images/star.png',
          scale: 3.5,
        )
      ],
    );
  }
}
