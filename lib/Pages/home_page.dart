import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:work_design/utils/colors.dart';
import '../home_page_widgets/home_Content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  bool heart = false;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          width: 70,
          height: 70,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: bgColor2.withOpacity(0.2),
                  spreadRadius: 1.0,
                  blurRadius: 1.0,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child:  Center(
              child: Image.asset("assets/images/navigation.png"),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Working of wallet icon
            },
            icon: const Icon(
              FontAwesomeIcons.wallet,
              color: bgColor2,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {
              // Working of language icon
            },
            icon: const Icon(
              FontAwesomeIcons.language,
              color: bgColor2,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {
              // Working of bell icon
            },
            icon: const Icon(
              FontAwesomeIcons.bell,
              color: bgColor2,
              size: 22,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            selected = index;
          });
        },
        children:  const [
          HomeContentBar(),
          Center(child: Text('Manual Page Content')),
          Center(child: Text('Stats Page Content')),
          Center(child: Text('Giveaway Page Content')),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        option: AnimatedBarOptions(
          iconSize: 30,
          barAnimation: BarAnimation.blink,
          iconStyle: IconStyle.animated,
          opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.house, size: 20),
            selectedIcon: const Icon(FontAwesomeIcons.house, color: bgColor2),
            selectedColor: bgColor2,
            unSelectedColor: Colors.grey,
            title: const Text('Home',
                style: TextStyle(fontFamily: 'roboto', fontSize: 13)),
          ),
          BottomBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.book, size: 20),
            ),
            selectedIcon: const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.book, size: 20),
            ),
            selectedColor: Colors.red,
            unSelectedColor: Colors.grey,
            title: const Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text('Manual',
                  style: TextStyle(fontFamily: 'roboto', fontSize: 13)),
            ),
          ),
          BottomBarItem(
            icon: const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Icon(Icons.bar_chart_rounded),
            ),
            selectedIcon: const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Icon(Icons.bar_chart_rounded,
                  color: Colors.deepOrangeAccent),
            ),
            selectedColor: Colors.deepOrangeAccent,
            unSelectedColor: Colors.grey,
            title: const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('Stats',
                  style: TextStyle(fontFamily: 'roboto', fontSize: 13)),
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              FontAwesomeIcons.rankingStar,
              size: 24,
            ),
            selectedIcon: const Icon(FontAwesomeIcons.rankingStar,
                color: Colors.deepOrangeAccent),
            selectedColor: Colors.deepOrangeAccent,
            unSelectedColor: Colors.grey,
            title: const Text(
              'Giveaway',
              style: TextStyle(fontFamily: 'roboto', fontSize: 13),
            ),
          ),
        ],
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
          });
          controller.jumpToPage(index);
        },
      ),
      floatingActionButton: Container(
        width: 90,
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: bgColor2.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: bgColor2,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Image.asset("assets/images"),
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// floatingActionButton: Container(
//   width: 90,
//   height: 90,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     shape: BoxShape.circle,
//   ),
//   child: Center(
//     child: Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: Container(
//         width: 80,
//         height: 80,
//         decoration: BoxDecoration(
//           color: bgColor2.withOpacity(0.4),
//           shape: BoxShape.circle,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(5.0),
//           child: Container(
//             width: 70,
//             height: 70,
//             decoration: BoxDecoration(
//               color: bgColor2,
//               shape: BoxShape.circle,
//             ),
//             child: IconButton(
//               icon: Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
//               onPressed: () {
//                 // Handle button press
//               },
//             ),
//           ),
//         ),
//       ),
//     ),
//   ),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// bottomNavigationBar: BottomAppBar(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Row(
//         children: [
//           IconButton(
//             icon: Icon(
//               FontAwesomeIcons.home,
//               color: _selectedIndex == 0 ? bgColor2 : Colors.black87,
//               size: 20,
//             ),
//             onPressed: () => _onItemTapped(0),
//           ),
//           IconButton(
//             icon: Icon(
//               FontAwesomeIcons.bookOpen,
//               color: _selectedIndex == 1 ? bgColor2 : Colors.black87,
//             ),
//             onPressed: () => _onItemTapped(1),
//           ),
//         ],
//       ),
//       Row(
//         children: [
//           IconButton(
//             icon: Icon(
//               FontAwesomeIcons.shoppingCart,
//               color: _selectedIndex == 2 ? bgColor2 : Colors.black87,
//
//             ),
//             onPressed: () => _onItemTapped(2),
//
//
//           ),
//           IconButton(
//             icon: Icon(
//               FontAwesomeIcons.user,
//               color: _selectedIndex == 3 ? bgColor2 : Colors.black87,
//             ),
//             onPressed: () => _onItemTapped(3),
//           ),
//         ],
//       ),
//     ],
//   ),
//   // color: Colors.white, // Background color of the BottomAppBar
//   // shape: CircularNotchedRectangle(), // To create a notch for FloatingActionButton
// ),
