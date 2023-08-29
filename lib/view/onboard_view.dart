import 'package:assistenapp/components/buttons.dart';
import 'package:assistenapp/constant/constant.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaScreenQuery = MediaQuery.of(context).size.height;
    const mainRadius = Radius.circular(30);
    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tribal_pattern.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                  offset: Offset(0, 0)
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: mainRadius,
                topRight: mainRadius
              ),
            ),
            height: mediaScreenQuery * 0.570,
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Register Account to this platform.",
                    style: MainTextStyle.gilroyTextStyle(
                      color: AppTheme.blackColor,
                      fontSize: 32,
                      fontsWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Find your best experience with us and get the best service from us.",
                    style: MainTextStyle.gilroyTextStyle(
                      color: AppTheme.grayColor,
                      fontSize: 16,
                      fontsWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 40),
                  MainButton(
                    text: "Register",
                    color: AppTheme.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  OutlineButtonApp(
                    text: "Login",
                    color: AppTheme.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Terms and Conditions",
                            style: MainTextStyle.gilroyTextStyle(
                              color: AppTheme.grayColor,
                              fontSize: 14,
                              fontsWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        const Text("|"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Privacy Policy",
                            style: MainTextStyle.gilroyTextStyle(
                              color: AppTheme.grayColor,
                              fontSize: 14,
                              fontsWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}