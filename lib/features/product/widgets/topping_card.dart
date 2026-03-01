import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ToppingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onAdd;

  const ToppingCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAdd,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 90,
              width: 110,
              color: Color(0xff3C2F2F),

              child: Column(mainAxisSize: MainAxisSize.min, children: []),
            ),
          ),

          Positioned(
            top: -40,
            right: -5,
            left: -5,
            child: SizedBox(
              height: 80,
              width: 90,
              child: Card(
                elevation: 4,

                color: Colors.white,
                child: Image.asset(imageUrl, fit: BoxFit.contain),
              ),
            ),
          ),

          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: title,
                    color: Colors.white,
                    size: 15,
                    weight: FontWeight.w600,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.add, color: Colors.white, size: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
