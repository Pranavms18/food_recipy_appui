import 'package:flutter/material.dart';
import 'package:food_recipy_appui/utils/constants/color_constants.dart';
import 'package:food_recipy_appui/utils/constants/image_constants.dart';
import 'package:food_recipy_appui/view/bottamnavbar_screen/bottamnavbar_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // first section - for building the background image

            _buildBackgroundImage(),
            //second section - gradient with a cooking button

            _buildGradiantSection(context),
            Positioned(
              top: 13,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "60k+",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        children: [
                          TextSpan(
                              text: " Premium recipes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16))
                        ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGradiantSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Let's Cooking",
                  style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.mainWhite,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Find best recipes for cooking",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottamnavbarScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.primaryColor,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Row(
                      children: [
                        Text(
                          "Start cooking",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: ColorConstants.mainWhite,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG))),
    );
  }
}
