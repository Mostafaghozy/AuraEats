import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/core/constants/app_strings.dart';
import 'package:aura_eats/features/auth/widgets/custom_btn.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:aura_eats/shared/custom_textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(60),
                AppStrings.logoText(),
                Gap(100),

                CustomTextfield(
                  hint: "Name",
                  isPassword: false,
                  controller: nameController,
                ),
                Gap(10),
                CustomTextfield(
                  hint: "Email Address",
                  isPassword: false,
                  controller: emailController,
                ),
                Gap(10),
                CustomTextfield(
                  hint: "Password",
                  isPassword: true,
                  controller: passController,
                ),
                Gap(10),

                CustomTextfield(
                  hint: "Confirm Password",
                  isPassword: true,
                  controller: confirmController,
                ),
                Gap(30),
                CustomAuthBtn(
                  text: "Sign up",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print("Success register");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
