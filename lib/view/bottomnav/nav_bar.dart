import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskapp/view/pages/homescreen.dart';
import 'package:taskapp/view/pages/product_description_page.dart';
import 'package:taskapp/view/pages/productpage.dart';
import 'package:taskapp/view/pages/products_screen.dart';
import 'package:taskapp/view/pages/profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  var currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ProductPage(),
    const ProductsScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: screenWidth * .155,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 36, 35, 35),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                SizedBox(
                  width: screenWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? screenWidth * .12 : 0,
                      width: index == currentIndex ? screenWidth * .2125 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? const Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(.2)
                            : const Color.fromARGB(0, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * .2125,
                  alignment: Alignment.center,
                  child: Icon(
                    listOfIcons[index],
                    size: screenWidth * .076,
                    color: index == currentIndex
                        ? Colors.white
                        : const Color.fromARGB(66, 154, 152, 152),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}
