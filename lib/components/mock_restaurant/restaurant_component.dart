import 'package:flutter/material.dart';
import 'package:ifood_mock/components/mock_coupon/mock_coupon.dart';
import 'package:ifood_mock/components/mock_label/mock_label.dart';
import 'package:ifood_mock/components/mock_rating/mock_rating.dart';
import 'package:ifood_mock/components/mock_restaurant_text_separator/restaurant_text_separator.dart';

import '../../helpers/strings/double_to_string.dart';

class MockRestaurant extends StatelessWidget {
  final String imagePath;
  final String restaurantName;
  final double rating;
  final String type;
  final double distance;
  final double minimumTtd;
  final double maximumTtd;
  final double deliveryPrice;
  final double? offerValue;
  final bool isFavorite;

  const MockRestaurant(
      {super.key,
      required this.restaurantName,
      required this.rating,
      required this.type,
      required this.distance,
      required this.minimumTtd,
      required this.maximumTtd,
      required this.deliveryPrice,
      this.offerValue,
      required this.isFavorite,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 25,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MockLabel(
                  text: restaurantName,
                  color: Colors.black,
                  weight: FontWeight.bold,
                  size: 14,
                ),
                Row(
                  children: [
                    MockRating(rating: rating),
                    const RestaurantTextSeparator(),
                    MockLabel(text: type, size: 12, color: Colors.black54),
                    const RestaurantTextSeparator(),
                    MockLabel(
                        text: "${distance.toString().replaceAll('.', ',')} km",
                        size: 12,
                        color: Colors.black54)
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    MockLabel(
                        text:
                            "${doubleToString(minimumTtd)}-${doubleToString(maximumTtd)} min",
                        size: 12,
                        color: Colors.black54),
                    const RestaurantTextSeparator(),
                    MockLabel(
                        text: "R\$ ${doubleToString(deliveryPrice)}",
                        size: 12,
                        color: Colors.black54)
                  ],
                ),
                const SizedBox(height: 8),
                if (offerValue != null) ...[
                  MockCoupon(
                    value: offerValue!,
                  )
                ]
              ],
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: Image.asset(
                'assets/images/heart-outline.png',
                scale: 1.25,
              ),
            )
          ],
        ));
  }
}
