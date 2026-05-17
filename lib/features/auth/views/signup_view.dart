import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/core/constants/app_strings.dart';
import 'package:aura_eats/features/auth/views/login_view.dart';
import 'package:aura_eats/features/auth/widgets/custom_btn.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:aura_eats/shared/custom_textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Gap(170),
              SvgPicture.asset(
                "assets/logo/Hungry_.svg",
                color: AppColors.primary,
              ),
              Text(
                "Welcome to aura eats",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Gap(70),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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

                        Gap(30),
                        CustomAuthBtn(
                          text: "Sign up",
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              print("Success register");
                            }
                          },
                        ),
                        Gap(20),
                        CustomAuthBtn(
                          text: "Go To Login ?",
                          color: Colors.white,
                          textColor: AppColors.primary,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (c) => LoginView()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
