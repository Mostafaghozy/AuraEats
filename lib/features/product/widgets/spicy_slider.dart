import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/details/detail.png", height: 260),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  "Customize Your Burger\n to Your Tastes. Ultimate\n Experience",
            ),
            Slider(
              min: 0,
              max: 1,
              value: widget.value,
              onChanged: widget.onChanged,
              inactiveColor: Colors.grey.shade300,
              activeColor: AppColors.primary,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomText(text: "🥶"),
                Gap(100),
                CustomText(text: "🌶️"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
