import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/product/widgets/spicy_slider.dart';
import 'package:aura_eats/features/product/widgets/topping_card.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0.5;

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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpicySlider(
              value: value,
              onChanged: (v) => setState(() => value = v),
            ),

            Gap(50),
            CustomText(text: "Toppings", size: 20),
            Gap(50),

            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ToppingCard(
                        imageUrl: 'assets/details/tomato.png',
                        title: 'Tomato',
                        onAdd: () {},
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
