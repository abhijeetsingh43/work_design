import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstHomeSlider extends StatefulWidget {
  const FirstHomeSlider({Key? key}) : super(key: key);

  @override
  State<FirstHomeSlider> createState() => _FirstHomeSliderState();
}

class _FirstHomeSliderState extends State<FirstHomeSlider> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          child: PageView(
            controller: _pageController,
            children: [
              ImageSlide("assets/images/first_slide_first_pic.png"),
              ImageSlide("assets/images/first_slide_first_pic.png"),
              ImageSlide("assets/images/first_slide_first_pic.png"),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotColor: Colors.white60,
            activeDotColor: Colors.white,
            dotHeight: 3,
            dotWidth: 12,
            spacing: 8,
          ),
          onDotClicked: (index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.bounceIn,
            );
          },
        ),
      ],
    );
  }

  Widget ImageSlide(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Image.asset(
        imagePath,
        fit: BoxFit.fitHeight,
        width: 157.59,
        height: 195.74,
      ),
    );
  }
}