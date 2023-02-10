import 'package:flutter/material.dart';
import 'package:ifood_mock/components/mock_label/mock_label.dart';

class MockCoupon extends StatelessWidget {
  final double value;
  const MockCoupon({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(35, 0, 255, 0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 6.0, right: 6.0, top: 3.0, bottom: 3.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3.0, right: 8.0),
              child: Image.asset('assets/images/coupon.png', scale: 3),
            ),
            MockLabel(
              text: "Cupom de R\$ ${value.toInt()} disponível",
              color: const Color.fromARGB(255, 0, 75, 0),
              weight: FontWeight.w500,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
