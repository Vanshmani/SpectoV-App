import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'dart:ui';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 1,
                ),
                child: GradientText(
                  "We're SpectoV.",
                  style: const TextStyle(
                      fontSize: 44, fontWeight: FontWeight.bold),
                  colors: const [Colors.white, Colors.grey, Colors.white],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 1,
                ),
                child: GradientText(
                  "We make trailblazing assistive VR & AR tech for a more accessible World",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400),
                  colors: const [Colors.white, Colors.grey],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Center(
                  child: Text(
                    "Here's our latest product",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.43,
                width: screenWidth,
                child: Center(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 25,
                        left: 0,
                        child: BlurredCircle(
                            diameter: 150, color: Colors.red.withOpacity(0.3)),
                      ),
                      Positioned(
                        top: 100,
                        left: 130,
                        child: BlurredCircle(
                            diameter: 100,
                            color: const Color.fromARGB(255, 216, 244, 54)
                                .withOpacity(0.3)),
                      ),
                      Positioned(
                        top: 150,
                        left: 150,
                        child: BlurredCircle(
                            diameter: 180,
                            color: const Color.fromARGB(255, 54, 190, 244)
                                .withOpacity(0.3)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FrostedGlassBox(
                          height: screenHeight * 0.38,
                          width: screenWidth * 0.83,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "DefXV",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.grey),
                                ),
                              ),
                              //Flexible(child: GlassViewModel()),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Swipe to look around",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    "Take a look at our other offerings!",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class GlassViewModel extends StatelessWidget {
//   const GlassViewModel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const ModelViewer(
//       src: 'assets/3dmodels/AR_GLASSES_rectified.glb',
//       alt: "A 3D model",
//       autoRotate: true,
//       cameraControls: true,
//     );
//   }
// }

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
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.15),
                      Colors.white.withOpacity(0.05),
                    ]),
              ),
            ),
            Center(child: child),
          ],
        ),
      ),
    );
  }
}

class BlurredCircle extends StatelessWidget {
  const BlurredCircle({super.key, required this.diameter, required this.color});

  final double diameter;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
