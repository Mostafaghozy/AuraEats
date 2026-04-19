import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/checkout/widgets/checkout_widget.dart';
import 'package:aura_eats/features/checkout/widgets/order_details_widget.dart';
import 'package:aura_eats/features/checkout/widgets/pay_now_widget.dart';
import 'package:aura_eats/shared/custom_button.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selectedMethod = "Cash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Order summary",
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(10),
              OrderDetailsWidget(
                order: '\$16.48',
                taxes: '\$0.3',
                fees: '\$1.5',
                total: '\$18.19',
              ),
              Gap(80),
              CustomText(
                text: "Payment methods",
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(15),

              /// Cash
              ListTile(
                onTap: () => setState(() => selectedMethod = "Cash"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.white, width: 2),
                ),
                title: CustomText(text: "On Delivery", color: Colors.white),
                tileColor: AppColors.primary,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
                leading: Image.asset("assets/checkout/dollar.png", width: 80),
                trailing: Radio<String>(
                  value: "Cash",
                  activeColor: Colors.white,
                  groupValue: selectedMethod,
                  onChanged: (v) {
                    setState(() {
                      selectedMethod = v!;
                    });
                  },
                ),
              ),
              Gap(10),

              /// Debit card
              ListTile(
                onTap: () => setState(() => selectedMethod = "Visa"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: const Color(0xff172B85), width: 2),
                ),
                title: CustomText(
                  text: "Debit card",
                  color: Colors.white,
                  weight: FontWeight.bold,
                  size: 15,
                ),
                subtitle: CustomText(
                  text: "3566 **** **** 0505",
                  color: Colors.grey.shade400,
                ),
                tileColor: AppColors.primary,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 16,
                ),
                leading: Image.asset(
                  "assets/checkout/visa-logo.png",
                  width: 80,
                ),
                trailing: Radio<String>(
                  value: "Visa",
                  activeColor: Colors.white,
                  groupValue: selectedMethod,
                  onChanged: (v) {
                    setState(() {
                      selectedMethod = v!;
                    });
                  },
                ),
              ),
              Gap(5),
              Row(
                children: [
                  Checkbox(
                    activeColor: AppColors.primary,
                    checkColor: Colors.white,

                    value: true,
                    onChanged: (v) {},
                  ),
                  CustomText(text: "Save card details for future payments"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Total", size: 16),

                  CustomText(text: "\$18.9", size: 24, weight: FontWeight.bold),
                ],
              ),
              CustomButton(
                text: "Pay Now",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (m) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 200,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade800,
                                  blurRadius: 15,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: AppColors.primary,
                                  child: Icon(
                                    CupertinoIcons.check_mark,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                                Gap(20),
                                CustomText(
                                  text: "Success !",
                                  color: AppColors.primary,
                                  weight: FontWeight.bold,
                                  size: 20,
                                ),
                                Gap(10),
                                CustomText(
                                  text:
                                      "Your payment was successful. \nA receipt for this purchase has \nbeen sent to your email.",
                                  color: Colors.grey.shade500,
                                  size: 13,
                                ),

                                Gap(50),
                                CustomButton(
                                  text: "Go Back",
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  width: 200,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                width: 150,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
