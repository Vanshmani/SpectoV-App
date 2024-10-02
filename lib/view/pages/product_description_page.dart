import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProductDescriptionPage extends StatefulWidget {
  const ProductDescriptionPage({super.key});

  @override
  State<ProductDescriptionPage> createState() => _ProductDescriptionPageState();
}

class _ProductDescriptionPageState extends State<ProductDescriptionPage> {
  bool _showTitle = false;
  bool _showDescription = false;

  @override
  void initState() {
    super.initState();
    _animateText();
  }

  void _animateText() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showTitle = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      _showDescription = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: AnimatedOpacity(
                  opacity: _showTitle ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: GradientText(
                    "DevXV",
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                    colors: const [Colors.white, Colors.grey, Colors.white],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: AnimatedOpacity(
                  opacity: _showDescription ? 1.0 : 0.0,
                  duration: const Duration(seconds: 1),
                  child: GradientText(
                    gradientDirection: GradientDirection.ltr,
                    "Step into a new reality with VisionPro VR Glasses, the ultimate gateway to immersive experiences designed for gamers, tech enthusiasts, and multimedia lovers. VisionPro brings cutting-edge technology right to your eyes with its ultra-high-resolution 4K Ultra HD lenses that offer crystal-clear visuals, and a 120-degree field of view that immerses you in the middle of the action. Its lightweight, ergonomic design ensures extended comfort, featuring an adjustable head strap and facial interface for a perfect fit. With advanced six degrees of freedom (6DoF) motion tracking, every movement you make is mirrored in the virtual world with stunning accuracy.",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    colors: const [Colors.white, Colors.grey, Colors.white],
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
