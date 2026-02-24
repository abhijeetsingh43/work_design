import 'package:flutter/material.dart';
import 'package:work_design/utils/colors.dart';

class GroceryButton extends StatefulWidget {
  const GroceryButton({super.key});

  @override
  State<GroceryButton> createState() => _GroceryButtonState();
}

class _GroceryButtonState extends State<GroceryButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:19 ,left: 15, right: 15),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [buttonGrocery2,buttonGrocery],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(8),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              "Grocery",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
