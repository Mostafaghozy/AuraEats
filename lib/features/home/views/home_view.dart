import 'package:aura_eats/core/constants/app_colors.dart';
import 'package:aura_eats/core/constants/app_strings.dart';
import 'package:aura_eats/features/home/widgets/card_item.dart';
import 'package:aura_eats/features/home/widgets/food_category.dart';
import 'package:aura_eats/features/home/widgets/search_field.dart';
import 'package:aura_eats/features/home/widgets/user_header.dart';
import 'package:aura_eats/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ["All", "Combo", "Sliders", "Classic"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            //header
            SliverAppBar(
              elevation: 0,
              pinned: true,
              floating: false,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              toolbarHeight: 160,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Column(children: [UserHeader(), Gap(20), SearchField()]),
              ),
            ),
            //search+category
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 5,
                ),
                child: FoodCategory(
                  selectedIndex: selectedIndex,
                  category: category,
                ),
              ),
            ),

            //GridView
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                  (context, index) => CardItem(
                    image: 'assets/home/test.png',
                    text: "Cheeseburger",
                    desc: "Wendy's Burger",
                    rate: '4.9',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
