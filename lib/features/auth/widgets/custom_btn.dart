import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({
    super.key,
    this.onTap,
    required this.text,
    this.color,
    this.textColor,
  });
  final Function()? onTap;
  final String text;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: CustomText(
            text: text,
            weight: FontWeight.bold,
            color: textColor ?? Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}
