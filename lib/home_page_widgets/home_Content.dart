import 'package:flutter/material.dart';
import 'package:work_design/home_page_widgets/horizontal_coupon_texts.dart';
import 'package:work_design/home_page_widgets/second_home_slide.dart';
import 'package:work_design/home_page_widgets/shopping_cart_containers.dart';
import 'package:work_design/home_page_widgets/total_price_text.dart';
import 'package:work_design/utils/colors.dart';
import 'balance_card.dart';
import 'bc_filter_area.dart';
import 'dropdown_menus.dart';
import 'first_home_slider.dart';
import 'grocery_button.dart';

class HomeContentBar extends StatefulWidget {
  const HomeContentBar({super.key});

  @override
  State<HomeContentBar> createState() => _HomeContentBarState();
}

class _HomeContentBarState extends State<HomeContentBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [bgColor2, bgColor1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Here affordability meets convenience",
                style: TextStyle(
                    color: Colors.white, fontFamily: "poppins", fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  "because you deserve the best without \n breaking the bank",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "poppins",
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            // First home slider
            const FirstHomeSlider(),
            const SizedBox(height: 15),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SecondHomeSlider(),
                  HorizontalScrollText(),
                  GroceryButton(),
                  DropHomeMenu(),
                  HomeBalanceCard(),
                  HomeTotalPriceText(),
                  HomeBcFilterSection(),
                  HomeShoppingcart()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
