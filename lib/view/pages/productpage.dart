import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool _showFirstBox = false;
  bool _showSecondBox = false;
  bool _showThirdBox = false;
  bool _showFourthBox = false;
  bool _showFifthBox = false;

  @override
  void initState() {
    super.initState();
    _animateBoxes();
  }

  void _animateBoxes() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showFirstBox = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showSecondBox = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showThirdBox = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showFourthBox = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showFifthBox = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: AnimatedOpacity(
                  opacity: _showFirstBox ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: FrostedGlassBox(
                    width: screenWidth * 0.80,
                    height: screenHeight * 0.20,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 30,
                          child: Image.asset(
                            'assets/glassfront.png',
                            width: 250,
                            height: 125,
                          ),
                        ),
                        GradientText(
                          "The\nSpecs",
                          style: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                          colors: const [
                            Colors.white,
                            Colors.grey,
                            Colors.white
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: AnimatedOpacity(
                      opacity: _showSecondBox ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      child: FrostedGlassBox(
                        width: screenWidth * 0.48,
                        height: screenHeight * 0.20,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dimensions",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "148.5H",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 121, 120, 120)),
                            ),
                            Text(
                              "60W",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            Text(
                              "52Dmm",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 112, 112, 112)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: AnimatedOpacity(
                      opacity: _showThirdBox ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      child: FrostedGlassBox(
                        width: screenWidth * 0.32,
                        height: screenHeight * 0.20,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "79",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            Text(
                              "grams",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 112, 112, 112)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: AnimatedOpacity(
                  opacity: _showFourthBox ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: FrostedGlassBox(
                    width: screenWidth * 0.80,
                    height: screenHeight * 0.20,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          right: -340,
                          top: -60,
                          child: Image.asset('assets/glass_side.png'),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Display",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "1080p resolution",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 121, 120, 120)),
                            ),
                            Text(
                              "46° FOV",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            Text(
                              "Micro OLED Panel",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 112, 112, 112)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: AnimatedOpacity(
                      opacity: _showFifthBox ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      child: FrostedGlassBox(
                        width: screenWidth * 0.48,
                        height: screenHeight * 0.20,
                        child: const Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Sound",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Dual Speakers",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 121, 120, 120)),
                                ),
                                Text(
                                  "and",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 117, 117, 117)),
                                ),
                                Text(
                                  "Microphones",
                                  style: TextStyle(
                                      height: 1,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 112, 112, 112)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: AnimatedOpacity(
                      opacity: _showFifthBox ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      child: FrostedGlassBox(
                        width: screenWidth * 0.32,
                        height: screenHeight * 0.20,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Connectivity",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "USB-C",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 121, 120, 120)),
                            ),
                            Text(
                              "Display",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            Text(
                              "port",
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 112, 112, 112)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox(
      {super.key,
      required this.width,
      required this.height,
      required this.child});

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: width,
        height: height,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color:
                        const Color.fromARGB(255, 48, 47, 50).withOpacity(1)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color.fromARGB(255, 78, 76, 81).withOpacity(1),
                      const Color.fromARGB(255, 28, 28, 29).withOpacity(1),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
