import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/checkout/widgets/checkout_widget.dart';
import 'package:aura_eats/features/checkout/widgets/order_details_widget.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Order summary",
              size: 20,
              weight: FontWeight.bold,
            ),
            Gap(10),
            OrderDetailsWidget(
              order: '\$16.48',
              taxes: '\$0.3',
              fees: '\$1.5',
              total: '\$18.19',
            ),
            Gap(80),
            CustomText(
              text: "Payment methods",
              size: 20,
              weight: FontWeight.bold,
            ),
            Gap(15),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              title: CustomText(text: "On Delivery", color: Colors.white),
              tileColor: AppColors.primary,
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              leading: Image.asset("assets/checkout/dollar.png", width: 80),
              trailing: Radio<String>(
                value: "Cash",
                activeColor: Colors.white,
                groupValue: "Cash",
                onChanged: (v) {},
              ),
            ),
            Gap(20),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: const Color(0xff172B85), width: 2),
              ),
              title: CustomText(
                text: "Debit card",
                color: Colors.white,
                weight: FontWeight.bold,
                size: 15,
              ),
              subtitle: CustomText(
                text: "3566 **** **** 0505",
                color: Colors.grey.shade400,
              ),
              tileColor: AppColors.primary,
              contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
              leading: Image.asset("assets/checkout/visa-logo.png", width: 80),
              trailing: Radio<String>(
                value: "Cash",
                activeColor: Colors.white,
                groupValue: "Cash",
                onChanged: (v) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
