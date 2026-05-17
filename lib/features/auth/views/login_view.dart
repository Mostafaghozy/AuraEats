import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/core/constants/app_strings.dart';
import 'package:aura_eats/features/auth/views/signup_view.dart';
import 'package:aura_eats/features/auth/widgets/custom_btn.dart';
import 'package:aura_eats/root.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:aura_eats/shared/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                CustomText(
                  text: 'Welcome Back, Discover The Fast Food',
                  color: AppColors.primary,
                  size: 12,
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
                          Gap(30),
                          CustomAuthBtn(
                            text: "Login",
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                print("Success login");
                              }
                            },
                          ),
                          Gap(20),
                          CustomAuthBtn(
                            text: "Create New Account",
                            color: Colors.white,
                            textColor: AppColors.primary,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (c) => SignupView()),
                              );
                            },
                          ),

                          ///Guest
                          Gap(20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) {
                                    return Root();
                                  },
                                ),
                              );
                            },
                            child: CustomText(
                              text: "Continue as a guest ?",
                              color: Colors.white,
                              size: 13,
                              weight: FontWeight.bold,
                            ),
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
      ),
    );
  }
}
