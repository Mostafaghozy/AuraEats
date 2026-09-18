import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavItem extends StatelessWidget {
  const CustomBottomNavItem({
    super.key,
    required this.index,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 10),
            curve: Curves.linear,

            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),

            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : Colors.transparent,

              borderRadius: BorderRadius.circular(30),
            ),

            child: AnimatedScale(
              scale: isSelected ? 1.0 : 1.0,
              duration: const Duration(milliseconds: 10),
              curve: Curves.linear,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 10),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Icon(
                      icon,
                      key: ValueKey('${index}_$isSelected'),
                      size: isSelected ? 25 : 25,
                      color: isSelected ? Colors.white : AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 10),
                    style: TextStyle(
                      fontSize: isSelected ? 12 : 12,

                      color: isSelected ? Colors.white : AppColors.primary,
                    ),
                    child: Text(label),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
