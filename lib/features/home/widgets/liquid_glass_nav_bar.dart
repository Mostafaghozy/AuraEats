import 'dart:ui';

import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/home/widgets/liquid_glass_nav_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiquidGlassNavBar extends StatelessWidget {
  const LiquidGlassNavBar({
    super.key,
    required this.currentIndex,
    required this.pressedIndex,
    required this.onItemSelected,
    required this.onItemPressed,
    required this.onItemReleased,
  });

  final int currentIndex;
  final int pressedIndex;

  final ValueChanged<int> onItemSelected;
  final ValueChanged<int> onItemPressed;
  final VoidCallback onItemReleased;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),

      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),

            border: Border.all(color: AppColors.primary, width: .5),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Row(
                  children: [
                    LiquidGlassNavItem(
                      icon: CupertinoIcons.home,
                      activeIcon: CupertinoIcons.house_fill,
                      label: 'Home',
                      isSelected: currentIndex == 0,
                      isPressed: pressedIndex == 0,
                      onTap: () => onItemSelected(0),
                      onTapDown: () => onItemPressed(0),
                      onTapCancel: onItemReleased,
                    ),
                    LiquidGlassNavItem(
                      icon: CupertinoIcons.cart,
                      activeIcon: CupertinoIcons.cart_fill,
                      label: 'Cart',
                      isSelected: currentIndex == 1,
                      isPressed: pressedIndex == 1,
                      onTap: () => onItemSelected(1),
                      onTapDown: () => onItemPressed(1),
                      onTapCancel: onItemReleased,
                    ),
                    LiquidGlassNavItem(
                      icon: Icons.local_restaurant_outlined,
                      activeIcon: Icons.local_restaurant,
                      label: 'Orders',
                      isSelected: currentIndex == 2,
                      isPressed: pressedIndex == 2,
                      onTap: () => onItemSelected(2),
                      onTapDown: () => onItemPressed(2),
                      onTapCancel: onItemReleased,
                    ),
                    LiquidGlassNavItem(
                      icon: CupertinoIcons.profile_circled,
                      activeIcon: CupertinoIcons.person_fill,
                      label: 'Profile',
                      isSelected: currentIndex == 3,
                      isPressed: pressedIndex == 3,
                      onTap: () => onItemSelected(3),
                      onTapDown: () => onItemPressed(3),
                      onTapCancel: onItemReleased,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
