import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LiquidGlassNavItem extends StatelessWidget {
  const LiquidGlassNavItem({
    super.key,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isSelected,
    required this.isPressed,
    required this.onTap,
    required this.onTapDown,
    required this.onTapCancel,
  });

  final IconData icon;
  final IconData activeIcon;
  final String label;

  final bool isSelected;
  final bool isPressed;

  final VoidCallback onTap;
  final VoidCallback onTapDown;
  final VoidCallback onTapCancel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        onTapDown: (_) {
          onTapDown();
        },
        onTapCancel: onTapCancel,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 50),
          curve: Curves.easeOutCubic,
          height: 65,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: isSelected
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(40),

                  border: Border.all(color: AppColors.primary, width: 1),
                )
              : null,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (isSelected)
                Positioned(
                  top: 3,
                  left: 12,
                  right: 12,
                  child: IgnorePointer(
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent],
                        ),
                      ),
                    ),
                  ),
                ),
              isSelected ? buildSelectedItem() : buildUnselectedItem(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSelectedItem() {
    return Column(
      key: ValueKey('selected_$label'),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(activeIcon, size: 23, color: AppColors.primary),

        Gap(3),
        Text(
          label,
          style: TextStyle(
            fontSize: 11.5,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }

  Widget buildUnselectedItem() {
    return Icon(
      key: ValueKey('unselected_$label'),
      icon,
      size: 23,
      color: AppColors.primary,
    );
  }
}
