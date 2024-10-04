import 'package:flutter/material.dart';
import 'package:food_recipy_appui/view/onboardin_screen/onboarding_screen.dart';
import 'package:food_recipy_appui/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
