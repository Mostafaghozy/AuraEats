import 'package:aura_eats/features/checkout/widgets/checkout_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.order,
    required this.taxes,
    required this.fees,
    required this.total,
  });
  final String order, taxes, fees, total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckoutWidget(
          title: 'Order',
          price: order,
          isBold: false,
          isSmall: false,
        ),
        const Gap(10),
        CheckoutWidget(
          title: 'Taxes',
          price: taxes,
          isBold: false,
          isSmall: false,
        ),
        const Gap(10),
        CheckoutWidget(
          title: 'Delivery fees',
          price: fees,
          isBold: false,
          isSmall: false,
        ),
        const Gap(10),
        const Divider(),
        const Gap(10),
        CheckoutWidget(
          title: 'Total:',
          price: total,
          isBold: true,
          isSmall: false,
        ),
        const Gap(10),
        const CheckoutWidget(
          title: 'Estimated delivery time:',
          price: '15 - 30 mins',
          isBold: true,
          isSmall: true,
        ),
      ],
    );
  }
}
