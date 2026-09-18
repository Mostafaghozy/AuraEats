import 'dart:ui';

import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/auth/views/profile_view.dart';
import 'package:aura_eats/features/cart/views/cart_view.dart';
import 'package:aura_eats/features/home/views/home_view.dart';
import 'package:aura_eats/features/orderHistory/views/order_history_view.dart';
import 'package:aura_eats/widgets/custom_bottom_nav_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;

  late List<Widget> screens;

  int currentScreen = 0;

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: currentScreen);

    screens = [HomeView(), CartView(), OrderHistoryView(), ProfileView()];
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void changeScreen(int index) {
    setState(() {
      currentScreen = index;
    });

    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 150),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false, //to show bottom navigation bar

      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),

          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),

            child: Container(
              height: 80,

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.18),

                borderRadius: BorderRadius.circular(30),

                border: Border.all(color: AppColors.primary, width: 1),
              ),

              child: Row(
                children: [
                  CustomBottomNavItem(
                    index: 0,
                    icon: CupertinoIcons.home,
                    label: 'Home',
                    isSelected: currentScreen == 0,
                    onTap: () => changeScreen(0),
                  ),
                  CustomBottomNavItem(
                    index: 1,
                    icon: CupertinoIcons.cart,
                    label: 'Cart',
                    isSelected: currentScreen == 1,
                    onTap: () => changeScreen(1),
                  ),
                  CustomBottomNavItem(
                    index: 2,
                    icon: Icons.local_restaurant_sharp,
                    label: 'Orders',
                    isSelected: currentScreen == 2,
                    onTap: () => changeScreen(2),
                  ),
                  CustomBottomNavItem(
                    index: 3,
                    icon: CupertinoIcons.profile_circled,
                    label: 'Profile',
                    isSelected: currentScreen == 3,
                    onTap: () => changeScreen(3),
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
