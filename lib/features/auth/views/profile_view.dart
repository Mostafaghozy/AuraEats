import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/auth/widgets/custom_user_text_field.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  void initState() {
    _name.text = "mostafa";
    _email.text = "mostafa@gmail.com";
    _address.text = "cairo";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: AppColors.primary),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/profile/setting.svg",
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png",
                      ),
                    ),
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey,
                  ),
                ),
              ),
              Gap(30),

              CustomUserTextField(
                label: "Name",
                controller: _name,
                textColor: AppColors.primary,
                borderColor: AppColors.primary,
                cursorColor: AppColors.primary,
              ),
              Gap(25),
              CustomUserTextField(
                label: "Email",
                controller: _email,
                textColor: AppColors.primary,
                borderColor: AppColors.primary,
                cursorColor: AppColors.primary,
              ),
              Gap(25),
              CustomUserTextField(
                label: "Delivery address",
                controller: _address,
                textColor: AppColors.primary,
                borderColor: AppColors.primary,
                cursorColor: AppColors.primary,
              ),
              Gap(25),
              Divider(color: AppColors.primary),
              Gap(15),
              ListTile(
                onTap: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: CustomText(
                  text: "Debit card",
                  color: Colors.white,
                  weight: FontWeight.bold,
                  size: 15,
                ),
                subtitle: CustomText(
                  text: "3566 **** **** 0505",
                  color: Colors.white,
                ),
                tileColor: AppColors.primary,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 16,
                ),
                leading: Image.asset(
                  "assets/checkout/visa-logo.png",
                  width: 70,
                  height: 70,
                ),
                trailing: CustomText(text: "Default", color: Colors.white),
              ),
              Gap(50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ///edit profile
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          CustomText(
                            text: "Edit Profile",
                            weight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          Gap(5),

                          Icon(CupertinoIcons.pencil, color: Colors.white),
                        ],
                      ),
                    ),

                    ///logout
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        border: Border.all(color: AppColors.primary),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          CustomText(
                            text: "Logout",
                            weight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          Gap(5),

                          Icon(Icons.logout, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Gap(400),
            ],
          ),
        ),
      ),
    );
  }
}
