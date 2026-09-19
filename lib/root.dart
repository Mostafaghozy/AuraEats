import 'package:aura_eats/features/auth/views/profile_view.dart';
import 'package:aura_eats/features/cart/views/cart_view.dart';
import 'package:aura_eats/features/home/views/home_view.dart';
import 'package:aura_eats/features/home/widgets/liquid_glass_nav_bar.dart';
import 'package:aura_eats/features/orderHistory/views/order_history_view.dart';

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
  int pressedIndex = -1;

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: currentScreen);

    screens = [
      const HomeView(),
      const CartView(),
      const OrderHistoryView(),
      const ProfileView(),
    ];
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void changeScreen(int index) {
    if (currentScreen == index) return;

    setState(() {
      currentScreen = index;
      pressedIndex = index;
    });

    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeOutCubic,
    );

    Future.delayed(const Duration(milliseconds: 50), () {
      if (mounted) {
        setState(() {
          pressedIndex = -1;
        });
      }
    });
  }

  void pressItem(int index) {
    setState(() {
      pressedIndex = index;
    });
  }

  void releaseItem() {
    setState(() {
      pressedIndex = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: Stack(
        children: [
          PageView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: screens,
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 10,

            child: LiquidGlassNavBar(
              currentIndex: currentScreen,
              pressedIndex: pressedIndex,

              onItemSelected: changeScreen,

              onItemPressed: pressItem,

              onItemReleased: releaseItem,
            ),
          ),
        ],
      ),
    );
  }
}
