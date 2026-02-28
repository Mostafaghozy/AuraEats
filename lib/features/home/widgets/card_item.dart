import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    required this.rate,
  });
  final String image, text, desc, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: 150),
            Gap(12),
            CustomText(text: text, weight: FontWeight.bold),
            CustomText(text: desc),
            Row(
              children: [
                CustomText(text: "⭐ $rate"),
                Spacer(),
                Icon(CupertinoIcons.heart_fill, color: AppColors.primary),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
