import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:work_design/utils/colors.dart';

class SecondHomeSlider extends StatefulWidget {
  const SecondHomeSlider({super.key});

  @override
  State<SecondHomeSlider> createState() => _SecondHomeSliderState();
}

class _SecondHomeSliderState extends State<SecondHomeSlider> {
  final PageController slideController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 21, 15, 19),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [Colors.grey.withOpacity(0.1), Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: slideController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                      colors: [Colors.white24, Colors.white],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Special Offer and Manaraj Sweet logo Area
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 1, left: 15, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/images/manrajlogo.png",
                                        width: 31, height: 22),
                                    const SizedBox(width: 6),
                                    const Text("Special offer",
                                        style: TextStyle(
                                            fontFamily: "italy", fontSize: 24)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 1, left:10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 62,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: bgColor2.withOpacity(0.2),
                                      ),
                                      child: const Center(
                                        child: Text("50% Off",
                                            style: TextStyle(
                                                color: bgColor2,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                    const SizedBox(width: 2),
                                    const Text("on all orders",
                                        style: TextStyle(
                                            fontFamily: "poppins",
                                            fontSize: 10)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2,right: 10),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(color: Colors.green),
                                    minimumSize: const Size(104, 32),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child:  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset('assets/images/whatsapp.png'),
                                      const SizedBox(width: 5),
                                      const Text(
                                        "Whatsapp",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.green,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 22,),
                          //images Gulab Jamun and Sponsor sign
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/images/manrajgulabjamun.png',
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(
                                      'assets/images/sponsor.png',
                                      width: 92,
                                      height: 20,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            // Slide Indicator
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: slideController,
                  count: 5, // Number of pages
                  effect: const SlideEffect(
                    dotColor: Colors.white60,
                    activeDotColor: bgColor2,
                    dotHeight: 6,
                    dotWidth: 6,
                    spacing: 8,
                  ),
                  onDotClicked: (index) {
                    slideController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
