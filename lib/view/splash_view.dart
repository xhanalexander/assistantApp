import 'package:assistenapp/constant/constant.dart';
import 'package:assistenapp/view/start_view.dart';
import 'package:flutter/material.dart';

const dimensionLogo = 128.0;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool showFirst = true;

  @override
  void initState() {
    super.initState();
    changeScene();
  }

  void changeScene() async {
    await Future.delayed(const Duration(milliseconds: 1200));
    setState(() {
      showFirst = false;
    });
    await Future.delayed(const Duration(milliseconds: 3200));
    Navigator.push(context, MaterialPageRoute(builder: (context) => const StartScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 1500),
      firstChild: const FirstScene(),
      secondChild: const SecondScene(),
      crossFadeState: showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

class FirstScene extends StatelessWidget {
  const FirstScene({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: const Center(
        child: Image(
          image: AssetImage('assets/images/Logo.png'),
          width: dimensionLogo,
          height: dimensionLogo,
        ),
      ),
    );
  }
}

class SecondScene extends StatelessWidget {
  const SecondScene({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: AppTheme.primaryColor,
      child: const Center(
        child: Image(
          image: AssetImage('assets/images/LogoWhite.png'),
          width: dimensionLogo,
          height: dimensionLogo,
        ),
      ),
    );
  }
}