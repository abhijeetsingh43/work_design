import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeTotalPriceText extends StatefulWidget {
  const HomeTotalPriceText({super.key});

  @override
  State<HomeTotalPriceText> createState() => _HomeTotalPriceTextState();
}

class _HomeTotalPriceTextState extends State<HomeTotalPriceText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Total Price",
              style: TextStyle(
                  fontFamily: 'poppins',
                  color: Colors.black87,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "160*5 = \$800",
              style: TextStyle(
                  fontFamily: 'poppins',
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15,top: 14),
            child: SizedBox(
              width: 230,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [buttonGrocery2, buttonGrocery],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(1000),
                  boxShadow: const [
                    BoxShadow(
                      color: bgColor2,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    // Remove elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: const Text(
                    "Confirm Slots",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
