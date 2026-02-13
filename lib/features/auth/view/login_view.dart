import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/core/constants/app_strings.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:aura_eats/shared/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Gap(60),
                AppStrings.logoText,
                CustomText(
                  text: 'Welcome Back, Discover The Fast Food',
                  color: Colors.white,
                  size: 12,
                ),
                Gap(40),
                CustomTextfield(
                  hint: "Email Address",
                  isPassword: false,
                  controller: emailController,
                ),
                Gap(20),
                CustomTextfield(
                  hint: "Password",
                  isPassword: true,
                  controller: passController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
