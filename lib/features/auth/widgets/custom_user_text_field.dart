import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomUserTextField extends StatelessWidget {
  const CustomUserTextField({
    super.key,
    required this.label,
    required this.controller,
    this.textColor,
    this.borderColor,
    this.cursorColor,
  });

  final String label;
  final TextEditingController controller;
  final Color? textColor;
  final Color? borderColor;
  final Color? cursorColor;

  @override
  Widget build(BuildContext context) {
    final Color resolvedTextColor = textColor ?? AppColors.primary;
    final Color resolvedBorderColor = borderColor ?? AppColors.primary;
    final Color resolvedCursorColor = cursorColor ?? AppColors.primary;

    return TextField(
      controller: controller,
      cursorColor: resolvedCursorColor,
      cursorHeight: 20,
      style: TextStyle(color: resolvedTextColor),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: resolvedTextColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: resolvedBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: resolvedBorderColor),
        ),
      ),
    );
  }
}
