import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/shared/custom_button.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key, required this.total, required this.onCheckout});

  final String total;
  final VoidCallback onCheckout;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.50),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              CupertinoIcons.cart,
              color: Colors.white,
              size: 22,
            ),
          ),
          const Gap(12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    CustomText(
                      text: 'Cart',
                      size: 18,
                      weight: FontWeight.w600,
                      color: AppColors.primary,
                    ),

                    CustomText(
                      text: total,
                      size: 16,
                      weight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ],
                ),
                CustomButton(
                  text: 'Checkout',
                  width: 120,
                  height: 46,
                  onTap: onCheckout,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
