import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work_design/utils/colors.dart';

class HomeShoppingcart extends StatefulWidget {
  const HomeShoppingcart({super.key});

  @override
  State<HomeShoppingcart> createState() => _HomeShoppingcartState();
}

class _HomeShoppingcartState extends State<HomeShoppingcart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShoppingCartRow(),
          ShoppingCartRow(),
          ShoppingCartRow(),
          ShoppingCartRow(),
        ],
      ),
    );
  }

  Widget ShoppingCartRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) => ShoppingCartContainer()),
      ),
    );
  }

  Widget ShoppingCartContainer() {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xfffFFDEE2),
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Icon(
          FontAwesomeIcons.shoppingCart,
          color: shoppingcart,
          size: 24,
        ),
      ),
    );
  }
}

