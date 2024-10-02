//bg - https://bg.ibelick.com/

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'package:taskapp/view/auth/sign_up_sceen.dart';
import 'package:taskapp/view/bottomnav/nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final TtsService _ttsService = TtsService();
  final String text =
      "Greetings, Welcome to Specto V. Please enter your phone number and password to Sign In";

  // @override
  // void initState() {
  //   super.initState();
  //   _startSpeaking();
  // }

  // Future<void> _startSpeaking() async {
  //   await _ttsService.speak(text);
  // }

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            GradientText(
              "Sign In",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              colors: const [Colors.white, Colors.grey, Colors.white],
            ),
            const SizedBox(
              height: 20,
            ),
            GradientText(
              "Phone Number",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              colors: const [Colors.white, Colors.grey, Colors.white],
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                ),
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Enter Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GradientText(
              gradientDirection: GradientDirection.btt,
              "Password",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              colors: const [Colors.white, Colors.grey, Colors.white],
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passwordController,
              //keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                ),
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Enter Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: GradientText(
                      "Forgot Password?",
                      colors: const [Colors.white, Colors.grey, Colors.white],
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const NavBar()));
              },
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New User?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                      },
                      child: GradientText(
                        "Sign Up",
                        colors: const [
                          Color.fromARGB(255, 102, 117, 204),
                          Color.fromARGB(255, 102, 117, 204),
                          Color.fromARGB(255, 134, 159, 202)
                        ],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
