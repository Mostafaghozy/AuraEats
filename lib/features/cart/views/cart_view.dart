import 'package:aura_eats/features/cart/widgets/cart_item.dart';
import 'package:aura_eats/features/cart/widgets/cart_summary.dart';
import 'package:aura_eats/features/checkout/views/checkout_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late List<int> quantities;
  final int itemCount = 6;

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
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
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
            Gap(20),
            CartSummary(
              total: '\$18.9',
              onCheckout: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckoutView()),
                );
              },
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
