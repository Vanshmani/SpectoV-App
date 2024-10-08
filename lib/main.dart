import 'package:flutter/material.dart';
import 'package:taskapp/view/splashscreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Specto V',
      theme: ThemeData(colorScheme: const ColorScheme.dark(primary: Colors.black)),
      home: const MySplashScreen(),
    );
  }
}
