import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:gradient_borders/gradient_borders.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            GradientText(
              "Products and Patents",
              style: const TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
              colors: const [Colors.white, Colors.grey, Colors.white],
            ),
            GradientText(
              gradientDirection: GradientDirection.rtl,
              "Take a  look at the catalog of high-tech frames we have!",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              colors: const [
                Color(0xff6F6F6F),
                Color(0xffD5D5D5),
              ],
            ),
            Expanded(
              child: AnimationLimiter(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      delay: const Duration(milliseconds: 100),
                      child: SlideAnimation(
                        duration: const Duration(milliseconds: 2500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: FadeInAnimation(
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(milliseconds: 2500),
                            child: GlassBox(
                              width: double.infinity,
                              height: screenHeight * 0.2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/isometric_glass.png',
                                      height: 100,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "DevXV",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "4.6",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.star_rounded,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.45,
                                          child: GradientText(
                                            "Our newest and flagship product equpped with hi-tech AR sensors and ...",
                                            style: const TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold),
                                            colors: const [
                                              Colors.white,
                                              Colors.grey,
                                              Colors.white
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  GradientText(
                                                    "${"\$"} 1400 ",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    colors: const [
                                                      Colors.white,
                                                      Colors.grey,
                                                      Colors.white
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.17,
                                                  ),
                                                  Container(
                                                      height: 25,
                                                      width: 70,
                                                      decoration: BoxDecoration(
                                                        border: const GradientBoxBorder(
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                              Colors.white,
                                                              Colors.grey,
                                                              Colors.white
                                                            ])),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: const Center(
                                                          child: Text(
                                                        "Buy Now",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white),
                                                      ))),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class GlassBox extends StatelessWidget {
  const GlassBox(
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
      borderRadius: BorderRadius.circular(8),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
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
            ),
            Center(child: child),
          ],
        ),
      ),
    );
  }
}
