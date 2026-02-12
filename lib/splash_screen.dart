import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            Gap(250),
            Text(
              "Hungry?",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            Spacer(),
            Image.asset("assets/splash/splash.png"),
          ],
        ),
      ),
    );
  }
}
