import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/cart/widgets/cart_item.dart';
import 'package:aura_eats/shared/custom_button.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Gap(100),
            CartItem(
              image: 'assets/home/test.png',
              text: 'Hamburger',
              desc: 'Veggie Burger',
              num: 1,
            ),
          ],
        ),
      ),
    );
  }
}
