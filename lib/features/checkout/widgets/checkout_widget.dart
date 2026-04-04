import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({
    super.key,
    required this.title,
    required this.price,
    required this.isBold,
    required this.isSmall,
  });
  final String title;
  final String price;
  final bool isBold;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: title,
          size: isSmall ? 12 : 15,
          weight: isBold ? FontWeight.bold : FontWeight.w400,
          color: isBold ? Colors.black : Colors.grey.shade600,
        ),
        CustomText(
          text: price,
          size: isSmall ? 12 : 15,
          weight: isBold ? FontWeight.bold : FontWeight.w400,
          color: isBold ? Colors.black : Colors.grey.shade600,
        ),
      ],
    );
  }
}
