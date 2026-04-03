import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/cart/widgets/cart_item.dart';
import 'package:aura_eats/shared/custom_button.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 120, top: 10),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/home/test.png"),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Hamburger",
                              weight: FontWeight.bold,
                            ),
                            CustomText(text: "Qty : X3"),
                            CustomText(text: "Price : 20\$"),
                          ],
                        ),
                      ],
                    ),

                    Gap(20),
                    CustomButton(
                      text: "Order Again",
                      onTap: () {},
                      width: double.infinity,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
