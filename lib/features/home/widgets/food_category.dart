// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:aura_eats/shared/custom_text.dart';

class FoodCategory extends StatefulWidget {
  FoodCategory({
    super.key,
    required this.selectedIndex,
    required this.category,
  });
  final int selectedIndex;
  final List category;

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  late int selectedIndex;
  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.category.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primary
                    : Color.fromARGB(255, 234, 235, 237),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: CustomText(
                text: widget.category[index],
                color: selectedIndex == index ? Colors.white : Colors.black,
              ),
            ),
          );
        }),
      ),
    );
  }
}
