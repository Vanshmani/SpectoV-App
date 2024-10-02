import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:taskapp/view/auth/login_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            const RiveAnimation.asset("assets/shapes.riv"),
            Positioned.fill(
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 25),
              child: const SizedBox(),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GradientText(
                      "Live the Future Today",
                      style: const TextStyle(
                          fontSize: 34, fontWeight: FontWeight.bold),
                      colors: const [Colors.white, Colors.grey, Colors.white],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
