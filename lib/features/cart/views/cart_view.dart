import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/features/cart/widgets/cart_item.dart';
import 'package:aura_eats/shared/custom_button.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late List<int> quantities;
  final int itemCount = 20;

  @override
  void initState() {
    quantities = List.generate(itemCount, (_) => 1);
    super.initState();
  }

  void onAdd(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void onMin(int index) {
    setState(() {
      if (quantities[index] > 1) {
        quantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 10),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return CartItem(
              image: 'assets/home/test.png',
              text: 'Hamburger',
              desc: 'Veggie Burger',
              num: quantities[index],
              onAdd: () => onAdd(index),
              onMin: () => onMin(index),
            );
          },
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: "Total", size: 16),
                CustomText(text: "\$18.9", size: 24, weight: FontWeight.bold),
              ],
            ),
            CustomButton(text: "Checkout", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
