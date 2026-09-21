import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(CupertinoIcons.search, color: AppColors.primary),
          hintText: "Search...",

          hintStyle: TextStyle(color: AppColors.primary.withOpacity(0.7)),
          fillColor: Colors.white,
          filled: true,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
