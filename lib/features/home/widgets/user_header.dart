import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/logo/Hungry_.svg",
              color: AppColors.primary,
              height: 35,
            ),
            Gap(5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomText(
                text: "Hello, Mostafa Ghozy",
                size: 14,
                weight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.primary,
          child: Icon(CupertinoIcons.person, color: Colors.white),
        ),
      ],
    );
  }
}
