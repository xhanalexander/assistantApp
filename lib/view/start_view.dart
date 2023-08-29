import 'package:assistenapp/components/buttons.dart';
import 'package:assistenapp/constant/constant.dart';
import 'package:assistenapp/view/onboard_view.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenQuery = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: mediaScreenQuery * 0.1, left: 40, right: 40),
        width: double.infinity,
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/TextLogo.png'),
              width: 264,
            ),
            const SizedBox(height: 10),
            const Text(
              "Will help you assist.",
              style: TextStyle(
                color: AppTheme.grayColor,
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const Image(
              image: AssetImage('assets/images/LargePattern.png'),
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            const Text(
              "Help you to find the best assistant for your needs.",
              style: TextStyle(
                color: AppTheme.blackColor,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButton(
                text: "Get Started",
                color: AppTheme.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OnboardScreen())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}