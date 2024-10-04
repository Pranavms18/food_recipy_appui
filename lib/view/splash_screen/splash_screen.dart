import 'package:flutter/material.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';
import 'package:food_recipy_appui/view/onboardin_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 200,
        ),
      ),
    );
  }
}
