import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "HUNGRY?",
                  style: TextStyle(color: AppColors.primary, fontSize: 30),
                ),

                CircleAvatar(
                  radius: 20,

                  child: Image.asset("assets/home/image 8.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
